package hostel_mana;

public class User {
	public User() {
    }

    String name;
    int stud_id;
    int room_id;
    String reg_id;
    String status;
    String email;
    String phone;
    String gaurdian_name;
    String gaurdian_phone;
    

    public String getemail() {
        return email;
    }

    public void setemail(String email) {
        this.email= email;
    }
    public String getphone() {
        return phone;
    }

    public void setphone(String phone) {
        this.phone = phone;
    }

    public String getgaurdian_name() {
        return gaurdian_name;
    }

    public void setgaurdian_name(String gaurdian_name) {
        this.gaurdian_name = gaurdian_name;
    }

    public String getgaurdian_phone() {
        return gaurdian_phone;
    }

    public void setgaurdian_phone(String gaurdian_phone) {
        this.gaurdian_phone = gaurdian_phone;
    }
    
    public String getname() {
        return name;
    }

    public void setname(String name) {
        this.name = name;
    }

    public int getstud_id() {
        return stud_id;
    }

    public void setstud_id(int i) {
        this.stud_id = i;
    }
    public int getroom_id() {
        return room_id;
    }

    public void setroom_id(int i) {
        this.room_id = i;
    }
    public String getreg_id() {
    	
        return reg_id;
    }

    public void setreg_id(String reg_id) {
        this.reg_id = reg_id;
    }

	public void setstatus(String status) {
		this.status=status;
	}
    public String getstatus() {
    	
        return status;
    }  
}
