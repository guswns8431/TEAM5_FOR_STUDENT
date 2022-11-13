#ifndef EXCEPTION_HPP
#define EXCEPTION_HPP

#include <exception>
#include <string>
#include <cstring>

class WebservException : public std::exception {
 private:
  std::string _error_message;
  int _error_number;

  WebservException(void);
  WebservException& operator=(const WebservException& t);

 public:
  WebservException(const std::string& error_message, const int error_number);
  WebservException(const WebservException& t);
  virtual ~WebservException(void) throw();

  int get_error_number(void) const;
  const char *get_error_message(void) const;
  virtual const char* what(void) const throw();
};

class MutexException : public WebservException {
 public:
  explicit MutexException(const std::string& m);
  MutexException(const std::string& m, const int n);
};

class ThreadException : public WebservException {
 public:
  explicit ThreadException(const std::string& m);
  ThreadException(const std::string& m, const int n);
};

class EngineException : public WebservException {
 public:
  explicit EngineException(const std::string& m);
  EngineException(const std::string& m, const int n);
};

class ParserException : public WebservException {
 public:
  explicit ParserException(const std::string& m);
  ParserException(const std::string& m, const int n);
};

class ConfigException : public WebservException {
 public:
  explicit ConfigException(const std::string& m);
  ConfigException(const std::string& m, const int n);
};

class ServerException : public WebservException {
 public:
  explicit ServerException(const std::string& m);
  ServerException(const std::string& m, const int n);
};

#endif
