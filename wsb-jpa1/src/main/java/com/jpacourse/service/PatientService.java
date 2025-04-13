package com.jpacourse.service;

import com.jpacourse.dto.PatientTO;

public interface PatientService {
    PatientTO findPatientById(final Long id);

    void savePatient(final PatientTO patientTO);

    void deletePatientById(final Long id);
}
