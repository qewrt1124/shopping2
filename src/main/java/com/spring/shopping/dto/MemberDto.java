package com.spring.shopping.dto;

import lombok.Data;

@Data
public class MemberDto {

  private int uid;
  private String userName, id, pass, email, address, phNum, grade, admin;
  private String addrDetail, roadAddrPart1, roadAddrPart2;
}
