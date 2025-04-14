package com.jpacourse.persistance.dao;


import com.jpacourse.persistance.entity.PatientEntity;
import com.jpacourse.persistance.entity.VisitEntity;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
@Transactional
public class PatientDaoTest {

    @Autowired
    private PatientDao patientDao;

    @PersistenceContext
    private EntityManager entityManager;

    @Test
    public void shouldAddVisitToPatient(){
        //given
        Long patientId = 10L;
        Long doctorId = 10L;
        LocalDateTime dateTime = LocalDateTime.now().plusHours(8);
        String desc = "Przestań wyrzucać wyjątki, proszę";


        //when
        patientDao.addVisitToPatient(patientId,doctorId,dateTime,desc);

        //then
        PatientEntity patientEntity = patientDao.findOne(patientId);
        assert(patientEntity != null);
        assert(!patientEntity.getVisits().isEmpty());

        assert(!patientEntity.getVisits().isEmpty());

    }

}
