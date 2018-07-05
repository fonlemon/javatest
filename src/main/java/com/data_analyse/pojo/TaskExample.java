package com.data_analyse.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TaskExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TaskExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andReceiveIdIsNull() {
            addCriterion("receive_id is null");
            return (Criteria) this;
        }

        public Criteria andReceiveIdIsNotNull() {
            addCriterion("receive_id is not null");
            return (Criteria) this;
        }

        public Criteria andReceiveIdEqualTo(Long value) {
            addCriterion("receive_id =", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdNotEqualTo(Long value) {
            addCriterion("receive_id <>", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdGreaterThan(Long value) {
            addCriterion("receive_id >", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdGreaterThanOrEqualTo(Long value) {
            addCriterion("receive_id >=", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdLessThan(Long value) {
            addCriterion("receive_id <", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdLessThanOrEqualTo(Long value) {
            addCriterion("receive_id <=", value, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdIn(List<Long> values) {
            addCriterion("receive_id in", values, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdNotIn(List<Long> values) {
            addCriterion("receive_id not in", values, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdBetween(Long value1, Long value2) {
            addCriterion("receive_id between", value1, value2, "receiveId");
            return (Criteria) this;
        }

        public Criteria andReceiveIdNotBetween(Long value1, Long value2) {
            addCriterion("receive_id not between", value1, value2, "receiveId");
            return (Criteria) this;
        }

        public Criteria andPublishIdIsNull() {
            addCriterion("publish_id is null");
            return (Criteria) this;
        }

        public Criteria andPublishIdIsNotNull() {
            addCriterion("publish_id is not null");
            return (Criteria) this;
        }

        public Criteria andPublishIdEqualTo(Long value) {
            addCriterion("publish_id =", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdNotEqualTo(Long value) {
            addCriterion("publish_id <>", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdGreaterThan(Long value) {
            addCriterion("publish_id >", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdGreaterThanOrEqualTo(Long value) {
            addCriterion("publish_id >=", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdLessThan(Long value) {
            addCriterion("publish_id <", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdLessThanOrEqualTo(Long value) {
            addCriterion("publish_id <=", value, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdIn(List<Long> values) {
            addCriterion("publish_id in", values, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdNotIn(List<Long> values) {
            addCriterion("publish_id not in", values, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdBetween(Long value1, Long value2) {
            addCriterion("publish_id between", value1, value2, "publishId");
            return (Criteria) this;
        }

        public Criteria andPublishIdNotBetween(Long value1, Long value2) {
            addCriterion("publish_id not between", value1, value2, "publishId");
            return (Criteria) this;
        }

        public Criteria andNameIsNull() {
            addCriterion("name is null");
            return (Criteria) this;
        }

        public Criteria andNameIsNotNull() {
            addCriterion("name is not null");
            return (Criteria) this;
        }

        public Criteria andNameEqualTo(String value) {
            addCriterion("name =", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotEqualTo(String value) {
            addCriterion("name <>", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThan(String value) {
            addCriterion("name >", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameGreaterThanOrEqualTo(String value) {
            addCriterion("name >=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThan(String value) {
            addCriterion("name <", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLessThanOrEqualTo(String value) {
            addCriterion("name <=", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameLike(String value) {
            addCriterion("name like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotLike(String value) {
            addCriterion("name not like", value, "name");
            return (Criteria) this;
        }

        public Criteria andNameIn(List<String> values) {
            addCriterion("name in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotIn(List<String> values) {
            addCriterion("name not in", values, "name");
            return (Criteria) this;
        }

        public Criteria andNameBetween(String value1, String value2) {
            addCriterion("name between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andNameNotBetween(String value1, String value2) {
            addCriterion("name not between", value1, value2, "name");
            return (Criteria) this;
        }

        public Criteria andImgIsNull() {
            addCriterion("img is null");
            return (Criteria) this;
        }

        public Criteria andImgIsNotNull() {
            addCriterion("img is not null");
            return (Criteria) this;
        }

        public Criteria andImgEqualTo(String value) {
            addCriterion("img =", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotEqualTo(String value) {
            addCriterion("img <>", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThan(String value) {
            addCriterion("img >", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgGreaterThanOrEqualTo(String value) {
            addCriterion("img >=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThan(String value) {
            addCriterion("img <", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLessThanOrEqualTo(String value) {
            addCriterion("img <=", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgLike(String value) {
            addCriterion("img like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotLike(String value) {
            addCriterion("img not like", value, "img");
            return (Criteria) this;
        }

        public Criteria andImgIn(List<String> values) {
            addCriterion("img in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotIn(List<String> values) {
            addCriterion("img not in", values, "img");
            return (Criteria) this;
        }

        public Criteria andImgBetween(String value1, String value2) {
            addCriterion("img between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andImgNotBetween(String value1, String value2) {
            addCriterion("img not between", value1, value2, "img");
            return (Criteria) this;
        }

        public Criteria andIntroductionIsNull() {
            addCriterion("introduction is null");
            return (Criteria) this;
        }

        public Criteria andIntroductionIsNotNull() {
            addCriterion("introduction is not null");
            return (Criteria) this;
        }

        public Criteria andIntroductionEqualTo(String value) {
            addCriterion("introduction =", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionNotEqualTo(String value) {
            addCriterion("introduction <>", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionGreaterThan(String value) {
            addCriterion("introduction >", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionGreaterThanOrEqualTo(String value) {
            addCriterion("introduction >=", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionLessThan(String value) {
            addCriterion("introduction <", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionLessThanOrEqualTo(String value) {
            addCriterion("introduction <=", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionLike(String value) {
            addCriterion("introduction like", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionNotLike(String value) {
            addCriterion("introduction not like", value, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionIn(List<String> values) {
            addCriterion("introduction in", values, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionNotIn(List<String> values) {
            addCriterion("introduction not in", values, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionBetween(String value1, String value2) {
            addCriterion("introduction between", value1, value2, "introduction");
            return (Criteria) this;
        }

        public Criteria andIntroductionNotBetween(String value1, String value2) {
            addCriterion("introduction not between", value1, value2, "introduction");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIsNull() {
            addCriterion("time_limit is null");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIsNotNull() {
            addCriterion("time_limit is not null");
            return (Criteria) this;
        }

        public Criteria andTimeLimitEqualTo(String value) {
            addCriterion("time_limit =", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotEqualTo(String value) {
            addCriterion("time_limit <>", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitGreaterThan(String value) {
            addCriterion("time_limit >", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitGreaterThanOrEqualTo(String value) {
            addCriterion("time_limit >=", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitLessThan(String value) {
            addCriterion("time_limit <", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitLessThanOrEqualTo(String value) {
            addCriterion("time_limit <=", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitLike(String value) {
            addCriterion("time_limit like", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotLike(String value) {
            addCriterion("time_limit not like", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIn(List<String> values) {
            addCriterion("time_limit in", values, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotIn(List<String> values) {
            addCriterion("time_limit not in", values, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitBetween(String value1, String value2) {
            addCriterion("time_limit between", value1, value2, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotBetween(String value1, String value2) {
            addCriterion("time_limit not between", value1, value2, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andType1IsNull() {
            addCriterion("type_1 is null");
            return (Criteria) this;
        }

        public Criteria andType1IsNotNull() {
            addCriterion("type_1 is not null");
            return (Criteria) this;
        }

        public Criteria andType1EqualTo(String value) {
            addCriterion("type_1 =", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1NotEqualTo(String value) {
            addCriterion("type_1 <>", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1GreaterThan(String value) {
            addCriterion("type_1 >", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1GreaterThanOrEqualTo(String value) {
            addCriterion("type_1 >=", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1LessThan(String value) {
            addCriterion("type_1 <", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1LessThanOrEqualTo(String value) {
            addCriterion("type_1 <=", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1Like(String value) {
            addCriterion("type_1 like", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1NotLike(String value) {
            addCriterion("type_1 not like", value, "type1");
            return (Criteria) this;
        }

        public Criteria andType1In(List<String> values) {
            addCriterion("type_1 in", values, "type1");
            return (Criteria) this;
        }

        public Criteria andType1NotIn(List<String> values) {
            addCriterion("type_1 not in", values, "type1");
            return (Criteria) this;
        }

        public Criteria andType1Between(String value1, String value2) {
            addCriterion("type_1 between", value1, value2, "type1");
            return (Criteria) this;
        }

        public Criteria andType1NotBetween(String value1, String value2) {
            addCriterion("type_1 not between", value1, value2, "type1");
            return (Criteria) this;
        }

        public Criteria andType2IsNull() {
            addCriterion("type_2 is null");
            return (Criteria) this;
        }

        public Criteria andType2IsNotNull() {
            addCriterion("type_2 is not null");
            return (Criteria) this;
        }

        public Criteria andType2EqualTo(String value) {
            addCriterion("type_2 =", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2NotEqualTo(String value) {
            addCriterion("type_2 <>", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2GreaterThan(String value) {
            addCriterion("type_2 >", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2GreaterThanOrEqualTo(String value) {
            addCriterion("type_2 >=", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2LessThan(String value) {
            addCriterion("type_2 <", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2LessThanOrEqualTo(String value) {
            addCriterion("type_2 <=", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2Like(String value) {
            addCriterion("type_2 like", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2NotLike(String value) {
            addCriterion("type_2 not like", value, "type2");
            return (Criteria) this;
        }

        public Criteria andType2In(List<String> values) {
            addCriterion("type_2 in", values, "type2");
            return (Criteria) this;
        }

        public Criteria andType2NotIn(List<String> values) {
            addCriterion("type_2 not in", values, "type2");
            return (Criteria) this;
        }

        public Criteria andType2Between(String value1, String value2) {
            addCriterion("type_2 between", value1, value2, "type2");
            return (Criteria) this;
        }

        public Criteria andType2NotBetween(String value1, String value2) {
            addCriterion("type_2 not between", value1, value2, "type2");
            return (Criteria) this;
        }

        public Criteria andOriginalFileIsNull() {
            addCriterion("original_file is null");
            return (Criteria) this;
        }

        public Criteria andOriginalFileIsNotNull() {
            addCriterion("original_file is not null");
            return (Criteria) this;
        }

        public Criteria andOriginalFileEqualTo(String value) {
            addCriterion("original_file =", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileNotEqualTo(String value) {
            addCriterion("original_file <>", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileGreaterThan(String value) {
            addCriterion("original_file >", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileGreaterThanOrEqualTo(String value) {
            addCriterion("original_file >=", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileLessThan(String value) {
            addCriterion("original_file <", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileLessThanOrEqualTo(String value) {
            addCriterion("original_file <=", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileLike(String value) {
            addCriterion("original_file like", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileNotLike(String value) {
            addCriterion("original_file not like", value, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileIn(List<String> values) {
            addCriterion("original_file in", values, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileNotIn(List<String> values) {
            addCriterion("original_file not in", values, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileBetween(String value1, String value2) {
            addCriterion("original_file between", value1, value2, "originalFile");
            return (Criteria) this;
        }

        public Criteria andOriginalFileNotBetween(String value1, String value2) {
            addCriterion("original_file not between", value1, value2, "originalFile");
            return (Criteria) this;
        }

        public Criteria andResultFileIsNull() {
            addCriterion("result_file is null");
            return (Criteria) this;
        }

        public Criteria andResultFileIsNotNull() {
            addCriterion("result_file is not null");
            return (Criteria) this;
        }

        public Criteria andResultFileEqualTo(String value) {
            addCriterion("result_file =", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileNotEqualTo(String value) {
            addCriterion("result_file <>", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileGreaterThan(String value) {
            addCriterion("result_file >", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileGreaterThanOrEqualTo(String value) {
            addCriterion("result_file >=", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileLessThan(String value) {
            addCriterion("result_file <", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileLessThanOrEqualTo(String value) {
            addCriterion("result_file <=", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileLike(String value) {
            addCriterion("result_file like", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileNotLike(String value) {
            addCriterion("result_file not like", value, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileIn(List<String> values) {
            addCriterion("result_file in", values, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileNotIn(List<String> values) {
            addCriterion("result_file not in", values, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileBetween(String value1, String value2) {
            addCriterion("result_file between", value1, value2, "resultFile");
            return (Criteria) this;
        }

        public Criteria andResultFileNotBetween(String value1, String value2) {
            addCriterion("result_file not between", value1, value2, "resultFile");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNull() {
            addCriterion("max_price is null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNotNull() {
            addCriterion("max_price is not null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceEqualTo(Integer value) {
            addCriterion("max_price =", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotEqualTo(Integer value) {
            addCriterion("max_price <>", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThan(Integer value) {
            addCriterion("max_price >", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("max_price >=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThan(Integer value) {
            addCriterion("max_price <", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThanOrEqualTo(Integer value) {
            addCriterion("max_price <=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIn(List<Integer> values) {
            addCriterion("max_price in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotIn(List<Integer> values) {
            addCriterion("max_price not in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceBetween(Integer value1, Integer value2) {
            addCriterion("max_price between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("max_price not between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNull() {
            addCriterion("min_price is null");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNotNull() {
            addCriterion("min_price is not null");
            return (Criteria) this;
        }

        public Criteria andMinPriceEqualTo(Integer value) {
            addCriterion("min_price =", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotEqualTo(Integer value) {
            addCriterion("min_price <>", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThan(Integer value) {
            addCriterion("min_price >", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("min_price >=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThan(Integer value) {
            addCriterion("min_price <", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThanOrEqualTo(Integer value) {
            addCriterion("min_price <=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceIn(List<Integer> values) {
            addCriterion("min_price in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotIn(List<Integer> values) {
            addCriterion("min_price not in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceBetween(Integer value1, Integer value2) {
            addCriterion("min_price between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotBetween(Integer value1, Integer value2) {
            addCriterion("min_price not between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceIsNull() {
            addCriterion("determine_price is null");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceIsNotNull() {
            addCriterion("determine_price is not null");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceEqualTo(Integer value) {
            addCriterion("determine_price =", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceNotEqualTo(Integer value) {
            addCriterion("determine_price <>", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceGreaterThan(Integer value) {
            addCriterion("determine_price >", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceGreaterThanOrEqualTo(Integer value) {
            addCriterion("determine_price >=", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceLessThan(Integer value) {
            addCriterion("determine_price <", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceLessThanOrEqualTo(Integer value) {
            addCriterion("determine_price <=", value, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceIn(List<Integer> values) {
            addCriterion("determine_price in", values, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceNotIn(List<Integer> values) {
            addCriterion("determine_price not in", values, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceBetween(Integer value1, Integer value2) {
            addCriterion("determine_price between", value1, value2, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andDeterminePriceNotBetween(Integer value1, Integer value2) {
            addCriterion("determine_price not between", value1, value2, "determinePrice");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeIsNull() {
            addCriterion("release_time is null");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeIsNotNull() {
            addCriterion("release_time is not null");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeEqualTo(Date value) {
            addCriterion("release_time =", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeNotEqualTo(Date value) {
            addCriterion("release_time <>", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeGreaterThan(Date value) {
            addCriterion("release_time >", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("release_time >=", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeLessThan(Date value) {
            addCriterion("release_time <", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeLessThanOrEqualTo(Date value) {
            addCriterion("release_time <=", value, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeIn(List<Date> values) {
            addCriterion("release_time in", values, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeNotIn(List<Date> values) {
            addCriterion("release_time not in", values, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeBetween(Date value1, Date value2) {
            addCriterion("release_time between", value1, value2, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReleaseTimeNotBetween(Date value1, Date value2) {
            addCriterion("release_time not between", value1, value2, "releaseTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeIsNull() {
            addCriterion("receive_time is null");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeIsNotNull() {
            addCriterion("receive_time is not null");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeEqualTo(Date value) {
            addCriterion("receive_time =", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeNotEqualTo(Date value) {
            addCriterion("receive_time <>", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeGreaterThan(Date value) {
            addCriterion("receive_time >", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("receive_time >=", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeLessThan(Date value) {
            addCriterion("receive_time <", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeLessThanOrEqualTo(Date value) {
            addCriterion("receive_time <=", value, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeIn(List<Date> values) {
            addCriterion("receive_time in", values, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeNotIn(List<Date> values) {
            addCriterion("receive_time not in", values, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeBetween(Date value1, Date value2) {
            addCriterion("receive_time between", value1, value2, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andReceiveTimeNotBetween(Date value1, Date value2) {
            addCriterion("receive_time not between", value1, value2, "receiveTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeIsNull() {
            addCriterion("completion_time is null");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeIsNotNull() {
            addCriterion("completion_time is not null");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeEqualTo(Date value) {
            addCriterion("completion_time =", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeNotEqualTo(Date value) {
            addCriterion("completion_time <>", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeGreaterThan(Date value) {
            addCriterion("completion_time >", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("completion_time >=", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeLessThan(Date value) {
            addCriterion("completion_time <", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeLessThanOrEqualTo(Date value) {
            addCriterion("completion_time <=", value, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeIn(List<Date> values) {
            addCriterion("completion_time in", values, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeNotIn(List<Date> values) {
            addCriterion("completion_time not in", values, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeBetween(Date value1, Date value2) {
            addCriterion("completion_time between", value1, value2, "completionTime");
            return (Criteria) this;
        }

        public Criteria andCompletionTimeNotBetween(Date value1, Date value2) {
            addCriterion("completion_time not between", value1, value2, "completionTime");
            return (Criteria) this;
        }

        public Criteria andScheduleIsNull() {
            addCriterion("schedule is null");
            return (Criteria) this;
        }

        public Criteria andScheduleIsNotNull() {
            addCriterion("schedule is not null");
            return (Criteria) this;
        }

        public Criteria andScheduleEqualTo(Integer value) {
            addCriterion("schedule =", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotEqualTo(Integer value) {
            addCriterion("schedule <>", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleGreaterThan(Integer value) {
            addCriterion("schedule >", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleGreaterThanOrEqualTo(Integer value) {
            addCriterion("schedule >=", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleLessThan(Integer value) {
            addCriterion("schedule <", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleLessThanOrEqualTo(Integer value) {
            addCriterion("schedule <=", value, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleIn(List<Integer> values) {
            addCriterion("schedule in", values, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotIn(List<Integer> values) {
            addCriterion("schedule not in", values, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleBetween(Integer value1, Integer value2) {
            addCriterion("schedule between", value1, value2, "schedule");
            return (Criteria) this;
        }

        public Criteria andScheduleNotBetween(Integer value1, Integer value2) {
            addCriterion("schedule not between", value1, value2, "schedule");
            return (Criteria) this;
        }

        public Criteria andClickRateIsNull() {
            addCriterion("click_rate is null");
            return (Criteria) this;
        }

        public Criteria andClickRateIsNotNull() {
            addCriterion("click_rate is not null");
            return (Criteria) this;
        }

        public Criteria andClickRateEqualTo(Integer value) {
            addCriterion("click_rate =", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateNotEqualTo(Integer value) {
            addCriterion("click_rate <>", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateGreaterThan(Integer value) {
            addCriterion("click_rate >", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateGreaterThanOrEqualTo(Integer value) {
            addCriterion("click_rate >=", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateLessThan(Integer value) {
            addCriterion("click_rate <", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateLessThanOrEqualTo(Integer value) {
            addCriterion("click_rate <=", value, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateIn(List<Integer> values) {
            addCriterion("click_rate in", values, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateNotIn(List<Integer> values) {
            addCriterion("click_rate not in", values, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateBetween(Integer value1, Integer value2) {
            addCriterion("click_rate between", value1, value2, "clickRate");
            return (Criteria) this;
        }

        public Criteria andClickRateNotBetween(Integer value1, Integer value2) {
            addCriterion("click_rate not between", value1, value2, "clickRate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}