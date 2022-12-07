package edu.global.shopping.dto;

public class MemberSaleDto {
    private int memberNo;
    private String memberName;
    private String grade;
    private int sale;

    @Override
    public String toString() {
        return "MemberSaleDto{" +
                "memberNo=" + memberNo +
                ", memberName='" + memberName + '\'' +
                ", grade='" + grade + '\'' +
                ", sale=" + sale +
                '}';
    }

    public MemberSaleDto(int memberNo, String memberName, String grade, int sale) {
        this.memberNo = memberNo;
        this.memberName = memberName;
        this.grade = grade;
        this.sale = sale;
    }

    public int getMemberNo() {
        return memberNo;
    }

    public void setMemberNo(int memberNo) {
        this.memberNo = memberNo;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }
}
