package com.jpacourse.dto;

import com.jpacourse.persistance.entity.AddressEntity;
import com.jpacourse.persistance.entity.FinishedVisitEntity;
import com.jpacourse.persistance.entity.MedicalTreatmentEntity;
import com.jpacourse.persistance.entity.VisitEntity;
import com.jpacourse.persistance.enums.TreatmentType;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;

public class PatientTO implements Serializable {

    private Long id;

    private String firstName;

    private String lastName;

    private String telephoneNumber;

    private String email;

    private String patientNumber;

    private LocalDate dateOfBirth;

    private AddressEntity address;

    private Collection<VisitEntity> visits;

    private Collection<FinishedVisitEntity> finishedVisits;



    public Long getId() {
        return id;
    }

    public Collection<FinishedVisitEntity> getFinishedVisits() {
        return finishedVisits;
    }

    public void setFinishedVisits(Collection<VisitEntity> visits) {
        Collection<FinishedVisitEntity> finishedVisits = new ArrayList<>();
        for (VisitEntity visitEntity : visits) {
            if (visitEntity.getTime().isBefore(LocalDateTime.now())){
                FinishedVisitEntity newFinishedVisitEntity = new FinishedVisitEntity();
                newFinishedVisitEntity.setDateOfVisit(visitEntity.getTime());
                newFinishedVisitEntity.setDoctorName(visitEntity.getDoctor().getFirstName());
                newFinishedVisitEntity.setDoctorSurname(visitEntity.getDoctor().getLastName());
                for (MedicalTreatmentEntity medicalTreatmentEntity : visitEntity.getTreatments()){
                    newFinishedVisitEntity.treatmentTypes.add(medicalTreatmentEntity.getType());
                }
                finishedVisits.add(newFinishedVisitEntity);
            }
        }
        this.finishedVisits = finishedVisits;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getTelephoneNumber() {
        return telephoneNumber;
    }

    public void setTelephoneNumber(String telephoneNumber) {
        this.telephoneNumber = telephoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPatientNumber() {
        return patientNumber;
    }

    public void setPatientNumber(String patientNumber) {
        this.patientNumber = patientNumber;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public AddressEntity getAddress() {
        return address;
    }

    public void setAddress(AddressEntity address) {
        this.address = address;
    }

    public Collection<VisitEntity> getVisits() {
        return visits;
    }

    public void setVisits(Collection<VisitEntity> visits) {
        this.visits = visits;
    }
}

