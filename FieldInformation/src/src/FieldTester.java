package src;

import java.time.LocalDate;
import java.util.List;

import controller.DistrictHelper;
import controller.FieldDetailsHelper;
import model.DistrictList;
import model.FieldDetails;

public class FieldTester {

	public static void main(String[] args) {
		FieldDetails sheldon = new FieldDetails("Sheldon", LocalDate.now());
		FieldDetailsHelper sh = new FieldDetailsHelper();
		sh.insertField(sheldon);
		DistrictHelper dh = new DistrictHelper();
		DistrictList northList = new DistrictList("North District List", LocalDate.now(), sheldon);
		dh.insertNewDistrict(northList);
		List<DistrictList> allDistricts = dh.getLists();
		for (DistrictList a : allDistricts) {
			System.out.println(a.toString());
		}

	}
}
