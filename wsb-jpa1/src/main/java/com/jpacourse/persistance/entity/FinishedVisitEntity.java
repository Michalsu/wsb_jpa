package com.jpacourse.persistance.entity;

import com.jpacourse.persistance.enums.TreatmentType;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Collection;

public class FinishedVisitEntity implements Serializable {
    private LocalDateTime dateOfVisit;
    private String doctorName;
    private String doctorSurname;
    public Collection<TreatmentType> treatmentTypes;

    public LocalDateTime getDateOfVisit() {
        return dateOfVisit;
    }

    public void setDateOfVisit(LocalDateTime dateOfVisit) {
        this.dateOfVisit = dateOfVisit;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDoctorSurname() {
        return doctorSurname;
    }

    public void setDoctorSurname(String doctorSurname) {
        this.doctorSurname = doctorSurname;
    }

    public Collection<TreatmentType> getTreatmentTypes() {
        return treatmentTypes;
    }

    public void setTreatmentTypes(Collection<TreatmentType> treatmentTypes) {
        this.treatmentTypes = treatmentTypes;
    }
}
