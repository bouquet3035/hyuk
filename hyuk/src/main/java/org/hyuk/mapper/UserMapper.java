package org.hyuk.mapper;

import org.apache.ibatis.annotations.Select;
import org.hyuk.dto.LoginDTO;
import org.hyuk.dto.UserDTO;

public interface UserMapper {
	@Select("select uid,upw,uname from tbl_user where uid =#{uid} and upw=#{upw}")
	public UserDTO login(LoginDTO dto);
}
