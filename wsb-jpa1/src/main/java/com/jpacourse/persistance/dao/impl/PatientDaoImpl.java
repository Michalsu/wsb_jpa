package com.jpacourse.persistance.dao.impl;

import com.jpacourse.persistance.dao.PatientDao;
import com.jpacourse.persistance.entity.DoctorEntity;
import com.jpacourse.persistance.entity.MedicalTreatmentEntity;
import com.jpacourse.persistance.entity.PatientEntity;
import com.jpacourse.persistance.entity.VisitEntity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Repository
public class PatientDaoImpl extends AbstractDao<PatientEntity, Long> implements PatientDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    @Override
    //ID pacjenta, ID doktora, data wizyty, opis wizyty
    public void addVisitToPatient(Long patientId, Long doctorId, LocalDateTime dateTime, String desc){
        PatientEntity patientEntity = entityManager.find(PatientEntity.class, patientId);
        DoctorEntity doctorEntity = entityManager.find(DoctorEntity.class, doctorId);
        List<MedicalTreatmentEntity> treatmentEntities = entityManager.createQuery(
                "select m from  MedicalTreatmentEntity m",  MedicalTreatmentEntity.class).getResultList();

        VisitEntity visitEntity = new VisitEntity();
        visitEntity.setPatient(patientEntity);
        visitEntity.setDoctor(doctorEntity);
        visitEntity.setTime(dateTime);
        visitEntity.setDescription(desc);
        Collection<MedicalTreatmentEntity> treatmentEntityCollection = new ArrayList<>(List.of());
        treatmentEntityCollection.addAll(treatmentEntities);
        visitEntity.setTreatments(treatmentEntities);
        patientEntity.getVisits().add(visitEntity);
        entityManager.merge(patientEntity);



    }
}
