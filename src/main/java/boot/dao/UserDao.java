package boot.dao;
/*
userdao层，需要实现以下三种方法
1.根据密码匹配用户（getmacthcount）
2.根据用户名获取用户对象（finduserbyname）
3.更新用户的积分，登录ip和时间
*/

import boot.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

@Repository
public class UserDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    //自动注入jdbctemplate的bean（对象）
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate=jdbcTemplate;
    }

    public int getMatchCount(String userName,String password){
        String sqlQuery=" select count(*) from t_user "+
                " where user_name=? and password=? ";

        Integer query = jdbcTemplate.queryForObject
                (sqlQuery, new Object[]{userName, password}, Integer.class);
        return query;
    }

    public User findUserByUserName(String userName){
        final User user=new User();

        String sqlQuery=" select user_id,user_name,credits "+
                " from t_user where user_name=?";

        jdbcTemplate.query
                (sqlQuery, new Object[]{userName}, new RowCallbackHandler() {
                    public void processRow(ResultSet resultSet) throws SQLException {
                        user.setUserId(resultSet.getInt("user_id"));
                        user.setUserName(resultSet.getString("user_name"));
                        user.setCredits(resultSet.getInt("credits"));
                    }
                });

        return user;
    }

    public void updateLoginInfo(User user){
        String sqlUpdate=" update t_user set "+
                " last_visit=?,last_ip=?,credits=? where user_id=?";

        jdbcTemplate.update(sqlUpdate,new Object[]{
                user.getLastVisit(),user.getLastIp(),user.getCredits(),user.getUserId()
        });
    }
}
