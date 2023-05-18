package fa.project.springmvc.validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import fa.project.springmvc.DTO.KhachHangDTO;
import fa.project.springmvc.services.TaiKhoanService;
@Component
public class DangKy implements Validator {
	@Autowired
	TaiKhoanService tk;
	@Override
    public boolean supports(Class<?> clazz) {
        return KhachHangDTO.class.equals(clazz);
    }
	
    @Override
    public void validate(Object target, Errors errors) {
        KhachHangDTO KhachHangDTO = (KhachHangDTO) target;

        if(!KhachHangDTO.getPassword().equals(KhachHangDTO.getCfpassword()))
        	errors.rejectValue("cfpassword", "NotEqual","Xác Nhận Lại Mật Khẩu Không Đúng");
        if(tk.checkEmail(KhachHangDTO.getEmail()))
        	errors.rejectValue("email", "Exist","Email đã tồn tại");
    }
}
