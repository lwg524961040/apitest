package com.pearadmin.modules.sys.service;

import java.util.List;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.modules.sys.domain.SysDynamicApi;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * Dynamic APIService接口
 *
 * @author wings
 * @date 2024-02-24
 */
public interface ISysDynamicApiService extends IService<SysDynamicApi> {

    /**
     * 查询Dynamic API
     * @param sysDynamicApi Dynamic API
     * @param pageDomain
     * @return Dynamic API 分页集合
     * */
    PageInfo<SysDynamicApi> selectSysDynamicApiPage(SysDynamicApi sysDynamicApi, PageDomain pageDomain);

}
