package com.clinic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "employees")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(nullable = false)
    private String avatar;

    @Column(nullable = false)
    private String fullName;

    @Column(nullable = false)
    private String dob;

    @Column(nullable = false)
    private boolean gender;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private String phone;

    @Column(nullable = false)
    private String address;

    private String workResume;


    @ManyToOne
    @JoinColumn(name = "employeeTypeId")
    private EmployeeType employeeType;

    @OneToOne
    @JoinColumn(name = "departmentId")
    private Department department;

    @OneToOne
    @JoinColumn(name = "positionId")
    private Position position;

    @OneToMany(targetEntity = MedicalBill.class, fetch = FetchType.EAGER)
    private Set<MedicalBill> listEmployees;


    public Employee(String avatar, String fullName, String dob, boolean gender, String email, String phone, String address, String workResume) {
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.workResume = workResume;
        this.avatar = avatar;
    }

    public Employee(String avatar, String fullName, String dob, boolean gender, String email, String phone, String address, String workResume, EmployeeType employeeType, Department department, Position position) {
        this.avatar = avatar;
        this.fullName = fullName;
        this.dob = dob;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.workResume = workResume;
        this.employeeType = employeeType;
        this.department = department;
        this.position = position;
    }

}