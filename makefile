NAME = libasm.a
ASM_SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_read.s ft_write.s test.s
ASM_OBJS = $(ASM_SRCS:.s=.o)
NS = nasm
NSflags = -fmacho64
SN = -fsanitize=address -g

%.o: %.s
	$(NS) $(NSflags) $<

$(NAME): $(ASM_OBJS)
	ar rcs $(NAME) $(ASM_OBJS)

all: $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f libasm.a

re: fclean all

test:
	gcc main.c -L. -lasm


