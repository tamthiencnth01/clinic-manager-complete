package com.clinic.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "medicineCategories")
public class MedicineCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @OneToMany(targetEntity = Medicine.class, fetch = FetchType.EAGER)
    private Set<Medicine> medicines;

    public MedicineCategory(String name, Set<Medicine> medicines) {
        this.name = name;
        this.medicines = medicines;
    }

    @Override
    public String toString() {
        return "MedicineCategory{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
