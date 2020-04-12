package com.pearadmin.system.service;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.system.domain.SysDictData;
import java.util.List;

public interface ISysDictDataService {

    /**
     * Describe: 根据条件查询字典类型列表数据
     * Param: SysDictData
     * Return: List<SysDictType>
     * */
    List<SysDictData> list(SysDictData sysDictData);

    /**
     * Describe: 根据条件查询字典类型列表数据 分页
     * Param: SysDictData
     * Return: PageInfo<SysDictType>
     * */
    PageInfo<SysDictData> page(SysDictData sysDictData, PageDomain pageDomain);
}