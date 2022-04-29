package com.spring.shopping.service;

import com.spring.shopping.dao.UserDao;
import com.spring.shopping.dto.MemberDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

  @Autowired
  private UserDao userDao;

  @Override
  public int join(MemberDto memberDto) {
    String address = memberDto.getRoadAddrPart1() + " " + memberDto.getAddrDetail() + " " + memberDto.getRoadAddrPart2();

    memberDto.setAddress(address);

    int result = userDao.join(memberDto);

    return result;
  }
}
