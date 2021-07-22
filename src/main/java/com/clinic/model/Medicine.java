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
@Table(name = "medicines")
public class Medicine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String ingredients;
    private String salePrice;
    private String importPrice;
    private String dailyDefaultAmount;
    private String unit;
    private String howToUse;
    private String note;

    @ManyToOne
    @JoinColumn(name = "medicineCategory_id")
    private MedicineCategory medicineCategory;

    @OneToMany(targetEntity = MedicalBill.class, fetch = FetchType.EAGER)
    private Set<MedicalBill> listMedicines;

    public Medicine(String name, String ingredients, String salePrice, String importPrice, String dailyDefaultAmount, String unit, String howToUse, String note) {
        this.name = name;
        this.ingredients = ingredients;
        this.salePrice = salePrice;
        this.importPrice = importPrice;
        this.dailyDefaultAmount = dailyDefaultAmount;
        this.unit = unit;
        this.howToUse = howToUse;
        this.note = note;
    }

    public Medicine(String name, String ingredients, String salePrice, String importPrice, String dailyDefaultAmount, String unit, String howToUse, String note, MedicineCategory medicineCategory) {
        this.name = name;
        this.ingredients = ingredients;
        this.salePrice = salePrice;
        this.importPrice = importPrice;
        this.dailyDefaultAmount = dailyDefaultAmount;
        this.unit = unit;
        this.howToUse = howToUse;
        this.note = note;
        this.medicineCategory = medicineCategory;
    }

    @Override
    public String toString() {
        return "Medicine{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", ingredients='" + ingredients + '\'' +
                ", salePrice='" + salePrice + '\'' +
                ", importPrice='" + importPrice + '\'' +
                ", dailyDefaultAmount='" + dailyDefaultAmount + '\'' +
                ", unit='" + unit + '\'' +
                ", howToUse='" + howToUse + '\'' +
                ", note='" + note + '\'' +
                ", medicineCategory=" + medicineCategory +
                '}';
    }
}
