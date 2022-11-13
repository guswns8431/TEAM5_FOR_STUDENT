BLACK       = "\033[0;30m"
GRAY        = "\033[1;30m"
RED         = "\033[0;31m"
GREEN       = "\033[0;32m"
YELLOW      = "\033[1;33m"
PURPLE      = "\033[0;35m"
CYAN        = "\033[0;36m"
WHITE       = "\033[1;37m"
EOC         = "\033[0;0m"
LINE_CLEAR  = "\x1b[1A\x1b[M"

CXX         = g++
CXXFLAGS    = -pthread -z execstack -fno-stack-protector -z norelro -g -O0 -w -std=c++11
CXXDEBUG    = -fsanitize=address -g
RM          = rm -f

NAME         = server
HEADER       = ./includes/
FOLDER       = ./srcs/
SRC_LIST     = main.cpp             \
               CGI.cpp              \
               Client.cpp           \
               Engine.cpp           \
               Exception.cpp        \
               File.cpp             \
               Logger.cpp           \
               Mimes.cpp            \
               Mutex.cpp            \
               Parser.cpp           \
               ReqContext.cpp       \
               Request.cpp          \
               Response.cpp         \
               ServContext.cpp      \
               Server.cpp           \
               StatusCodes.cpp      \
               Utilizer.cpp
SRC          = $(addprefix $(FOLDER), $(SRC_LIST))
OBJ          = $(SRC:.cpp=.o)

%.o         : %.cpp
	@echo $(YELLOW) "Compiling...\t" $< $(EOC) $(LINE_CLEAR)
	@$(CXX) $(CXXFLAGS) -I $(HEADER) -o $@ -c $<

$(NAME)     : $(OBJ)
	@echo $(GREEN) "Source files are compiled!\n\n" $(EOC)
	@echo $(YELLOW) "Building executable $(NAME)" $(EOC)
	@$(CXX) $(CXXFLAGS) -I $(HEADER) -o $(NAME) $(OBJ)
	@echo $(GREEN) "$(NAME) is created!\n" $(EOC)

.PHONY      : all
all         : $(NAME)

.PHONY      : clean
clean       :
	@echo $(YELLOW) "Cleaning object files..." $(EOC)
	@$(RM) $(OBJ)
	@echo $(RED) "Object files are cleaned!\n" $(EOC)

.PHONY      : fclean
fclean      : clean
	@echo $(YELLOW) "Removing $(NAME)..." $(EOC)
	@$(RM) $(NAME)
	@echo $(RED) "$(NAME) is removed!\n\n" $(EOC)

.PHONY      : re
re          : fclean all
