package com.spring.shopping.service;

import com.spring.shopping.dao.MainDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {

  @Autowired
  private MainDao mainDao;

}
