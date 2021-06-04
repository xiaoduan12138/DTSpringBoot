package boot.service;
/*
业务层主要实现的是将userdao和loginlog联系起来
一起完成用户的认证以及用户登录日志的更新操作
 */

import boot.dao.LoginLogDao;
import boot.dao.UserDao;
import boot.domain.LoginLog;
import boot.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserService {
    private UserDao userDao;
    private LoginLogDao loginLogDao;

    @Autowired
    public void setUserDao(UserDao userDao){
        this.userDao=userDao;
    }

    @Autowired
    public void setLoginLogDao(LoginLogDao loginLogDao){
        this.loginLogDao=loginLogDao;
    }

    public boolean hasMatchUser(String userName,String password){
        int matchCount=userDao.getMatchCount(userName,password);
        return (matchCount>0);
    }

    public User findUserByUserName(String userName){
        return userDao.findUserByUserName(userName);
    }

    @Transactional
    public void loginSuccess(User user){
        user.setCredits(5+user.getCredits());
        LoginLog loginLog=new LoginLog();
        loginLog.setUserId(user.getUserId());
        loginLog.setIp(user.getLastIp());
        loginLog.setLoginDate(user.getLastVisit());

        userDao.updateLoginInfo(user);
        loginLogDao.insertLoginLog(loginLog);
    }
}