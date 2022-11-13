#ifndef MUTEX_HPP
#define MUTEX_HPP

#include <pthread.h>

class Mutex {
 private:
  pthread_mutex_t _mutex;

  Mutex(const Mutex& m);
  Mutex& operator=(const Mutex& m);

 public:
  Mutex(void);
  ~Mutex(void);

  void lock(void);
  void unlock(void);
  bool try_lock(void);
};

#endif
