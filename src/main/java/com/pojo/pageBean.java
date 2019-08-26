package com.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class pageBean {
    private Integer currPage=1;
    private Integer size=5;
    private Integer count;
    private Integer totalPage;

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        this.currPage = currPage;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    @Override
    public String toString() {
        return "pageBean{" +
                "currPage=" + currPage +
                ", size=" + size +
                ", count=" + count +
                ", totalPage=" + totalPage +
                '}';
    }
}
