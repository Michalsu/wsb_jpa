package com.jpacourse.persistance.dao;


import com.jpacourse.persistance.entity.PatientEntity;
import com.jpacourse.service.PatientService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
public class PatientServiceTest {

    @Autowired
    private PatientService patientService;
    @Autowired
    private PatientDao patientDao;
    @Autowired
    private VisitDao visitDao;
    @Autowired
    private DoctorDao doctorDao;


    @Transactional
    @Test
    public void testDeletePatient() {
        //given
        PatientEntity patientEntity = patientDao.findOne(5L);


        //when
        patientService.deletePatientById(5L);

        //then

        assert(patientDao.findOne(5L) == null);
        assert(visitDao.findOne(5L) == null);
        assert(visitDao.findOne(6L) != null);
        assert(doctorDao.findOne(5L) != null);
        assert(doctorDao.findOne(2L) != null);
    }
}
