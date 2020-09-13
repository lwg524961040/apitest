package com.pearadmin.common.file.mapper;

import com.pearadmin.common.file.domain.File;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * 文件数据库接口
 * */
@Mapper
public interface FileMapper {

    /**
     * Describe: 插入文件信息
     * Param: File
     * Return: int
     * */
    int insert(File file);

    /**
     * Describe: 查询文件列表
     * Param: null
     * Return: List<File>
     * */
    List<File> selectList();

    /**
     * Describe: 根据 Id 查询文件信息
     * Param: id
     * Return: File
     * */
    File selectById(@Param("id") String id);

}