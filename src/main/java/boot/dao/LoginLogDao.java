package boot.dao;
/*此类负责进行登录日志管理，实现insertloginlog方法*/

import boot.domain.LoginLog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class LoginLogDao {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    //自动注入jdbctemplate的bean（对象）
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate=jdbcTemplate;
    }

    public void insertLoginLog(LoginLog loginLog){
        String sql="insert into t_login_log(user_id,ip,login_datetime) values(?,?,?)";
        jdbcTemplate.update(sql,new Object[]{
                loginLog.getUserId(),loginLog.getIp(),loginLog.getLoginDate()
        });
    }
}
