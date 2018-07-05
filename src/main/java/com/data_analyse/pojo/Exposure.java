package com.data_analyse.pojo;

import java.util.Date;

public class Exposure {
    private Long id;

    private Long userId;

    private Long taskId;

    private String violationDetails;

    private Date time;

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

    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public String getViolationDetails() {
        return violationDetails;
    }

    public void setViolationDetails(String violationDetails) {
        this.violationDetails = violationDetails == null ? null : violationDetails.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}