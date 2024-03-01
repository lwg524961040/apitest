package com.pearadmin.modules.sys.controller;

import com.github.pagehelper.PageInfo;
import com.pearadmin.common.context.UserContext;
import com.pearadmin.modules.sys.domain.SysDynamicApi;
import com.pearadmin.common.tools.string.Convert;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.module.ResultTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.pearadmin.modules.sys.service.ISysDynamicApiService;

import java.time.LocalDateTime;
import java.util.Arrays;

/**
 * Dynamic APIController
 *
 * @author wings
 * @date 2024-02-24
 */
@RestController
@RequestMapping("/system/dynamicApi")
public class SysDynamicApiController extends BaseController {

    private String prefix = "system/dynamicApi";

    @Autowired
    private ISysDynamicApiService sysDynamicApiService;

    @GetMapping("/main")
    @PreAuthorize("hasPermission('/system/dynamicApi/main','sys:dynamicApi:main')")
    public ModelAndView main() {
        return jumpPage(prefix + "/main");
    }

    /**
     * 查询Dynamic API列表
     */
    @ResponseBody
    @GetMapping("/data")
    @PreAuthorize("hasPermission('/system/dynamicApi/data','sys:dynamicApi:data')")
    public ResultTable list(@ModelAttribute SysDynamicApi sysDynamicApi, PageDomain pageDomain) {
        PageInfo<SysDynamicApi> pageInfo = sysDynamicApiService.selectSysDynamicApiPage(sysDynamicApi, pageDomain);
        return pageTable(pageInfo.getList(), pageInfo.getTotal());
    }

    /**
     * 新增Dynamic API
     */
    @GetMapping("/add")
    @PreAuthorize("hasPermission('/system/dynamicApi/add','sys:dynamicApi:add')")
    public ModelAndView add() {
        return jumpPage(prefix + "/add");
    }

    /**
     * 新增Dynamic API
     */
    @ResponseBody
    @PostMapping("/save")
    @PreAuthorize("hasPermission('/system/dynamicApi/add','sys:dynamicApi:add')")
    public Result save(@RequestBody SysDynamicApi sysDynamicApi) {
        return decide(sysDynamicApiService.save(sysDynamicApi));
    }

    /**
     * 修改Dynamic API
     */
    @GetMapping("/edit")
    @PreAuthorize("hasPermission('/system/dynamicApi/edit','sys:dynamicApi:edit')")
    public ModelAndView edit(String id, ModelMap map) {
        SysDynamicApi sysDynamicApi =sysDynamicApiService.getById(id);
        map.put("sysDynamicApi", sysDynamicApi);
        return jumpPage(prefix + "/edit");
    }

    /**
     * 修改Dynamic API
     */
    @ResponseBody
    @PutMapping("/update")
    @PreAuthorize("hasPermission('/system/dynamicApi/edit','sys:dynamicApi:edit')")
    public Result update(@RequestBody SysDynamicApi sysDynamicApi) {
        return decide(sysDynamicApiService.updateById(sysDynamicApi));
    }

    /**
     * 删除Dynamic API
     */
    @ResponseBody
    @DeleteMapping("/batchRemove")
    @PreAuthorize("hasPermission('/system/dynamicApi/remove','sys:dynamicApi:remove')")
    public Result batchRemove(String ids) {
        return decide(sysDynamicApiService.removeByIds(Arrays.asList(ids.split(","))));
    }

    /**
     * 删除Dynamic API
     */
    @ResponseBody
    @DeleteMapping("/remove/{id}")
    @PreAuthorize("hasPermission('/system/dynamicApi/remove','sys:dynamicApi:remove')")
    public Result remove(@PathVariable("id") String id) {
        return decide(sysDynamicApiService.removeById(id));
    }
}
