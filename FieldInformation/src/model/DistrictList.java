package model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * @author RYANF This class is meant to build the district lists that the fields
 *         would go in. When I say fields, I mean corn/soybean fields. Also
 *         persist the data in the database in various tables. Districts are
 *         made due to different soil-types, as well as slight sunlight
 *         differences due to latitudes
 *
 */
@Entity
@Table(name = "district_list")
public class DistrictList {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_district_list")
	private int listId;
	@Column(name = "district_location")
	private String district;
	@Column(name = "year")
	private LocalDate year;
	@ManyToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "id_field_details")
	private FieldDetails fieldDetails;
	@OneToMany(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REMOVE }, fetch = FetchType.EAGER)
	@JoinTable(name = "list_of_fields", joinColumns = {
			@JoinColumn(name = "list_id", referencedColumnName = "id_district_list") }, inverseJoinColumns = {
					@JoinColumn(name = "field_id", referencedColumnName = "id_field_details", unique = true) })
	private List<FieldDetails> listOfFields;

	/**
	 * constructors
	 * 
	 * @param listId
	 * @param district
	 * @param year
	 * @param fieldDetails
	 * @param listOfFields
	 */
	public DistrictList(int listId, String district, LocalDate year, FieldDetails fieldDetails,
			List<FieldDetails> listOfFields) {
		super();
		this.listId = listId;
		this.district = district;
		this.year = year;
		this.fieldDetails = fieldDetails;
		this.listOfFields = listOfFields;
	}

	public DistrictList(String district, LocalDate year, FieldDetails fieldDetails, List<FieldDetails> listOfFields) {
		this.district = district;
		this.year = year;
		this.fieldDetails = fieldDetails;
		this.listOfFields = listOfFields;
	}

	public DistrictList(String district, LocalDate year, FieldDetails fieldDetails) {
		this.district = district;
		this.year = year;
		this.fieldDetails = fieldDetails;
	}

	public DistrictList(String district) {
		this.district = district;
	}

	/**
	 * no arg constructor
	 * 
	 */
	public DistrictList() {

	}

	// Getters and setters
	public int getListId() {
		return listId;
	}

	public void setListId(int listId) {
		this.listId = listId;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public LocalDate getYear() {
		return year;
	}

	public void setYear(LocalDate year) {
		this.year = year;
	}

	public FieldDetails getFieldDetails() {
		return fieldDetails;
	}

	public void setFieldDetails(FieldDetails fieldDetails) {
		this.fieldDetails = fieldDetails;
	}

	public List<FieldDetails> getListOfFields() {
		return listOfFields;
	}

	public void setListOfFields(List<FieldDetails> listOfFields) {
		this.listOfFields = listOfFields;
	}

	// To string
	@Override
	public String toString() {
		return "DistrictList [listId=" + listId + ", district=" + district + ", year=" + year + ", fieldDetails="
				+ fieldDetails + ", listOfFields=" + listOfFields + "]";
	}

}
