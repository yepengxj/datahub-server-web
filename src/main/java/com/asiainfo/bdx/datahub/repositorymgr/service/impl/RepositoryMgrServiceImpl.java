package com.asiainfo.bdx.datahub.repositorymgr.service.impl;

import com.asiainfo.bdx.datahub.repositorymgr.dao.IRepositoryMgrDao;
import com.asiainfo.bdx.datahub.repositorymgr.service.IRepositoryMgrService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
@Service
public class RepositoryMgrServiceImpl implements IRepositoryMgrService {
    @Resource
    private IRepositoryMgrDao repositoryMgrDao;

    public List getRepositories() {

        List list = repositoryMgrDao.getRepositories("", "");
        return list;
    }
}
