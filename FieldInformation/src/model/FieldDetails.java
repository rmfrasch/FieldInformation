package model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author RYANF This is meant to build the corn/soybean fields that would go
 *         into the district lists. Because there is various soil types and
 *         slight weather differences, fields are placed into districts to
 *         reduce error on yield data.
 *
 */
@Entity
@Table(name = "field_details")
public class FieldDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_field_details")
	private int fieldId;
	@Column(name = "field_name")
	private String fieldName;
	@Column(name = "year")
	private LocalDate date;

	@Column(name = "district_list_id_district_list")
	private int listId;

	/**Constructors
	 * @param fieldId
	 * @param fieldName
	 * @param date
	 */
	public FieldDetails(int fieldId, String fieldName, LocalDate date) {
		super();
		this.fieldId = fieldId;
		this.fieldName = fieldName;
		this.date = date;
	}
	//No arg constructor
	public FieldDetails() {

	}

	public FieldDetails(String fieldName, LocalDate date) {
		this.fieldName = fieldName;
		this.date = date;
	}

	public FieldDetails(String fieldName) {
		this.fieldName = fieldName;
	}
	//Getters and Setters
	public int getFieldId() {
		return fieldId;
	}

	public void setFieldId(int fieldId) {
		this.fieldId = fieldId;
	}

	public String getFieldName() {
		return fieldName;
	}

	public void setFieldName(String fieldName) {
		this.fieldName = fieldName;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}
	//To String
	@Override
	public String toString() {
		return "FieldDetails [fieldId=" + fieldId + ", fieldName=" + fieldName + ", date=" + date + "]";
	}

}
