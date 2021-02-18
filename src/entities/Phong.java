package entities;
// Generated Oct 13, 2019 1:33:09 PM by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * Phong generated by hbm2java
 */
public class Phong  implements java.io.Serializable {


     private String maphong;
     private String loaiphong;
     private BigDecimal giaphong;
     private Boolean trangthai;
     private Set cthds = new HashSet(0);

    public Phong() {
    }

	
    public Phong(String maphong) {
        this.maphong = maphong;
    }
    public Phong(String maphong, String loaiphong, BigDecimal giaphong, Boolean trangthai, Set cthds) {
       this.maphong = maphong;
       this.loaiphong = loaiphong;
       this.giaphong = giaphong;
       this.trangthai = trangthai;
       this.cthds = cthds;
    }
   
    public String getMaphong() {
        return this.maphong;
    }
    
    public void setMaphong(String maphong) {
        this.maphong = maphong;
    }
    public String getLoaiphong() {
        return this.loaiphong;
    }
    
    public void setLoaiphong(String loaiphong) {
        this.loaiphong = loaiphong;
    }
    public BigDecimal getGiaphong() {
        return this.giaphong;
    }
    
    public void setGiaphong(BigDecimal giaphong) {
        this.giaphong = giaphong;
    }
    public Boolean getTrangthai() {
        return this.trangthai;
    }
    
    public void setTrangthai(Boolean trangthai) {
        this.trangthai = trangthai;
    }
    public Set getCthds() {
        return this.cthds;
    }
    
    public void setCthds(Set cthds) {
        this.cthds = cthds;
    }




}

