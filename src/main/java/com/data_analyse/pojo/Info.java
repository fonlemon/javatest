package com.data_analyse.pojo;

import java.util.Date;

public class Info {
    private Long id;

    private Long userId;

    private String content;

    private Date time;

    private String url;

    private String whetherToView;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getWhetherToView() {
        return whetherToView;
    }

    public void setWhetherToView(String whetherToView) {
        this.whetherToView = whetherToView == null ? null : whetherToView.trim();
    }
}