package com.xinyan.mms.materials.query;public class QueryUpdate {    //物料    private int materials_id;    private String mmaterials_coding;    private String mmaterials_name;    private String munit_coding;    private String mmaterials_specification;    private String mmaterials_remark;    private String mmaterials_useprocess;    private String mtype_coding;    private String mmaterials_status;    //库存    private String wmaterials_coding;    private String wwstore_name;    private String wwarehouse_warningvalue;    private String wwarehouse_stockquantity;    private String wwarehouse_remark;    //字典    //单位    private int uunit_coding;    private String uunit_name;    //类型    private int ttype_coding;    private String ttype_name;    //仓库    private int sstore_coding;    private String sstore_name;    @Override    public String toString( ) {        return "Update(更新获取到的参数值){" +                "materials_id=" + materials_id +                ", mmaterials_coding='" + mmaterials_coding + '\'' +                ", mmaterials_name='" + mmaterials_name + '\'' +                ", munit_coding='" + munit_coding + '\'' +                ", mmaterials_specification='" + mmaterials_specification + '\'' +                ", mmaterials_remark='" + mmaterials_remark + '\'' +                ", mmaterials_useprocess='" + mmaterials_useprocess + '\'' +                ", mtype_coding='" + mtype_coding + '\'' +                ", mmaterials_status='" + mmaterials_status + '\'' +                ", wmaterials_coding='" + wmaterials_coding + '\'' +                ", wwstore_name='" + wwstore_name + '\'' +                ", wwarehouse_warningvalue='" + wwarehouse_warningvalue + '\'' +                ", wwarehouse_stockquantity='" + wwarehouse_stockquantity + '\'' +                ", wwarehouse_remark='" + wwarehouse_remark + '\'' +                ", uunit_coding=" + uunit_coding +                ", uunit_name='" + uunit_name + '\'' +                ", ttype_coding=" + ttype_coding +                ", ttype_name='" + ttype_name + '\'' +                ", sstore_coding=" + sstore_coding +                ", sstore_name='" + sstore_name + '\'' +                '}';    }    public int getMaterials_id( ) {        return materials_id;    }    public void setMaterials_id( int materials_id ) {        this.materials_id = materials_id;    }    public String getMmaterials_coding( ) {        return mmaterials_coding;    }    public void setMmaterials_coding( String mmaterials_coding ) {        this.mmaterials_coding = mmaterials_coding;    }    public String getMmaterials_name( ) {        return mmaterials_name;    }    public void setMmaterials_name( String mmaterials_name ) {        this.mmaterials_name = mmaterials_name;    }    public String getMunit_coding( ) {        return munit_coding;    }    public void setMunit_coding( String munit_coding ) {        this.munit_coding = munit_coding;    }    public String getMmaterials_specification( ) {        return mmaterials_specification;    }    public void setMmaterials_specification( String mmaterials_specification ) {        this.mmaterials_specification = mmaterials_specification;    }    public String getMmaterials_remark( ) {        return mmaterials_remark;    }    public void setMmaterials_remark( String mmaterials_remark ) {        this.mmaterials_remark = mmaterials_remark;    }    public String getMmaterials_useprocess( ) {        return mmaterials_useprocess;    }    public void setMmaterials_useprocess( String mmaterials_useprocess ) {        this.mmaterials_useprocess = mmaterials_useprocess;    }    public String getMtype_coding( ) {        return mtype_coding;    }    public void setMtype_coding( String mtype_coding ) {        this.mtype_coding = mtype_coding;    }    public String getMmaterials_status( ) {        return mmaterials_status;    }    public void setMmaterials_status( String mmaterials_status ) {        this.mmaterials_status = mmaterials_status;    }    public String getWmaterials_coding( ) {        return wmaterials_coding;    }    public void setWmaterials_coding( String wmaterials_coding ) {        this.wmaterials_coding = wmaterials_coding;    }    public String getWwstore_name( ) {        return wwstore_name;    }    public void setWwstore_name( String wwstore_name ) {        this.wwstore_name = wwstore_name;    }    public String getWwarehouse_warningvalue( ) {        return wwarehouse_warningvalue;    }    public void setWwarehouse_warningvalue( String wwarehouse_warningvalue ) {        this.wwarehouse_warningvalue = wwarehouse_warningvalue;    }    public String getWwarehouse_stockquantity( ) {        return wwarehouse_stockquantity;    }    public void setWwarehouse_stockquantity( String wwarehouse_stockquantity ) {        this.wwarehouse_stockquantity = wwarehouse_stockquantity;    }    public String getWwarehouse_remark( ) {        return wwarehouse_remark;    }    public void setWwarehouse_remark( String wwarehouse_remark ) {        this.wwarehouse_remark = wwarehouse_remark;    }    public int getUunit_coding( ) {        return uunit_coding;    }    public void setUunit_coding( int uunit_coding ) {        this.uunit_coding = uunit_coding;    }    public String getUunit_name( ) {        return uunit_name;    }    public void setUunit_name( String uunit_name ) {        this.uunit_name = uunit_name;    }    public int getTtype_coding( ) {        return ttype_coding;    }    public void setTtype_coding( int ttype_coding ) {        this.ttype_coding = ttype_coding;    }    public String getTtype_name( ) {        return ttype_name;    }    public void setTtype_name( String ttype_name ) {        this.ttype_name = ttype_name;    }    public int getSstore_coding( ) {        return sstore_coding;    }    public void setSstore_coding( int sstore_coding ) {        this.sstore_coding = sstore_coding;    }    public String getSstore_name( ) {        return sstore_name;    }    public void setSstore_name( String sstore_name ) {        this.sstore_name = sstore_name;    }}