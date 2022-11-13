#ifndef STATUSCODE_HPP
#define STATUSCODE_HPP

#include <string>

#include "./Utilizer.hpp"

class StatusCodes {
 private:
  StatusCodeMapper _mapper;

  StatusCodes(const StatusCodes& s);
  StatusCodes& operator=(const StatusCodes& s);

 public:
  StatusCodes(void);
  ~StatusCodes(void);

  const std::string& operator[](int code);
};

#endif
