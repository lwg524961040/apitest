package com.pearadmin.modules.sys.service.impl;

import java.util.List;
import java.util.ArrayList;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.pearadmin.modules.sys.mapper.SysDynamicApiMapper;
import com.pearadmin.modules.sys.domain.SysDynamicApi;
import com.pearadmin.modules.sys.service.ISysDynamicApiService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;

import java.util.Arrays;
/**
 * Dynamic APIService业务层处理
 *
 * @author wings
 * @date 2024-02-24
 */
@Service
public class SysDynamicApiServiceImpl extends ServiceImpl<SysDynamicApiMapper,SysDynamicApi> implements ISysDynamicApiService {


    /**
     * 查询Dynamic API
     * @param sysDynamicApi Dynamic API
     * @param pageDomain
     * @return Dynamic API 分页集合
     * */
    @Override
    public PageInfo<SysDynamicApi> selectSysDynamicApiPage(SysDynamicApi sysDynamicApi, PageDomain pageDomain) {
        PageHelper.startPage(pageDomain.getPage(), pageDomain.getLimit());
        List<SysDynamicApi> data = baseMapper.selectSysDynamicApiList(sysDynamicApi);
        return new PageInfo<>(data);
    }

}
