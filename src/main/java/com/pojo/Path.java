package com.pojo;

public class Path {
    private String pathurl;

    private String houseid;

    public String getPathurl() {
        return pathurl;
    }

    public void setPathurl(String pathurl) {
        this.pathurl = pathurl == null ? null : pathurl.trim();
    }

    public String getHouseid() {
        return houseid;
    }

    public void setHouseid(String houseid) {
        this.houseid = houseid == null ? null : houseid.trim();
    }
}