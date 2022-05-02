package com.spring.shopping.dto;

import lombok.Data;

@Data
public class BoardDto {

  private int bid;
  private String bwriter, title, content, writeDate, category, imp;
}
