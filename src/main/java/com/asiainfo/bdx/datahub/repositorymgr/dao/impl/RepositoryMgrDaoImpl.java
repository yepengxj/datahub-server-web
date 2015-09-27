package com.asiainfo.bdx.datahub.repositorymgr.dao.impl;

import com.asiainfo.bdx.datahub.common.dao.BaseJdbcDao;
import com.asiainfo.bdx.datahub.repositorymgr.dao.IRepositoryMgrDao;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Title :
 * <p/>
 * Description :
 * <p/>
 * CopyRight : CopyRight (c) 2014
 * <p/>
 * <p/>
 * JDK Version Used : JDK 5.0 +
 * <p/>
 * Modification History	:
 * <p/>
 * <pre>NO.    Date    Modified By    Why & What is modified</pre>
 * <pre>1    15.9.26    bob        Created</pre>
 * <p/>
 *
 * @author bob
 */
@Repository
public class RepositoryMgrDaoImpl extends BaseJdbcDao implements IRepositoryMgrDao {

    @Override
    public List getRepositories(String userid, String keyWord) {

        StringBuilder sb = new StringBuilder();
        sb.append("select * from dh_repository");
        List list = null;
        try {
            list = getJdbcTemplate().queryForList(sb.toString());
        } catch (DataAccessException e) {
            e.printStackTrace();
        }
        return list;
    }
}
