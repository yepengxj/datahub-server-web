package com.asiainfo.bdx.datahub.repositorymgr.action;

import com.asiainfo.bdx.datahub.common.action.BaseAction;
import com.asiainfo.bdx.datahub.repositorymgr.service.IRepositoryMgrService;
import net.sf.json.JSONObject;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class RepositoryMgrAction extends BaseAction {

    @Resource
    private IRepositoryMgrService repositoryMgrService;

    public String list() {
        String param = getRequest().getParameter("param");
        System.out.println(param);

        List list = repositoryMgrService.getRepositories();

        System.out.println("size"+list.size());
        Map<String, Object> jsonMap = new HashMap<String, Object>();
        jsonMap.put("total", list.size());
        jsonMap.put("rows", list);
        String listJson = JSONObject.fromObject(jsonMap).toString();
        try {
            sendJson(getResponse(), listJson.toString());
            System.out.println(listJson.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


}
