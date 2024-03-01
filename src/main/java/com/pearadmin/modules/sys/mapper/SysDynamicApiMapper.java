package com.pearadmin.modules.sys.mapper;

import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import com.pearadmin.modules.sys.domain.SysDynamicApi;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * Dynamic APIMapper接口
 *
 * @author wings
 * @date 2024-02-24
 */
@Mapper
public interface SysDynamicApiMapper extends BaseMapper<SysDynamicApi> {
    /**
     * 查询Dynamic API列表
     *
     * @param sysDynamicApi Dynamic API
     * @return Dynamic API集合
     */
    List<SysDynamicApi> selectSysDynamicApiList(SysDynamicApi sysDynamicApi);

}
