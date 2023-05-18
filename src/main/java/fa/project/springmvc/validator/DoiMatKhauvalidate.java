package fa.project.springmvc.validator;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import fa.project.springmvc.DTO.DoiMatKhau;
import fa.project.springmvc.entities.TaiKhoanEntity;
import fa.project.springmvc.services.TaiKhoanService;

@Component
public class DoiMatKhauvalidate implements Validator {
	@Autowired
	TaiKhoanService taikhoan;
	@Override
    public boolean supports(Class<?> clazz) {
        return DoiMatKhau.class.equals(clazz);
    }
	
    @Override
    public void validate(Object target, Errors errors) {
    	DoiMatKhau doiMatKhau = (DoiMatKhau) target;
    	TaiKhoanEntity tk=taikhoan.getAccount(doiMatKhau.getEmail());
    	if(!BCrypt.checkpw(doiMatKhau.getMatKhauCu(),tk.getPassword()))
     		errors.rejectValue("matKhauCu", "NotEqual","Mật Khẩu Cũ Không Đúng");
    	if(!doiMatKhau.getMatKhauMoi().equals(doiMatKhau.getXacNhan()))
        	errors.rejectValue("xacNhan", "NotEqual","Xác Nhận Lại Mật Khẩu Không Đúng");
       
    }

}
