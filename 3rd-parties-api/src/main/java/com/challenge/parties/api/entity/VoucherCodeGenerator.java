package com.challenge.parties.api.entity;

import java.io.Serializable;

public class VoucherCodeGenerator implements Serializable {

    private int id;
    private String code;

    public VoucherCodeGenerator(int id, String code) {
        this.id = id;
        this.code = code;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}

