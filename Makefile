# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tjooris <tjooris@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/20 14:10:16 by tjooris           #+#    #+#              #
#    Updated: 2025/01/20 17:06:19 by tjooris          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a


#=-=-=-=-=-=-FILES-=-=-=-=-=-=#

MAKE_DIR	:=	.file/
BUILD_DIR	:=	$(MAKE_DIR)build_$(or $(shell git branch --show-current),default)/
BASE_DIR	:=	normal/

SRC_DIR		=	src/

OBJ			=	$(patsubst	%.c, $(BUILD_DIR)%.o, $(SRC))

DEP			=	$(patsubst	%.c, $(BUILD_DIR)%.d, $(SRC)


#=-=-=-=-=-=-ROOT-=-=-=-=-=#

SRC	=

#=-=-=-=-=-=-IS-=-=-=-=-=#

SRC	+= $(addprefix $(IS_DIR), $(IS_SRC))

IS_DIR	=	is/
IS_SRC	=	ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_print.c \

#=-=-=-=-=-=-LST-=-=-=-=-=#

SRC	+=	$(addprefix $(LST_DIR), $(LST_SRC))

LST_DIR	=	lst/
LST_SRC	=	ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \
			ft_lstmap_bonus.c \

#=-=-=-=-=-=-MEM-=-=-=-=-=#

SRC	+=	$(addprefix $(MEM_DIR), $(MEM_SRC))

MEM_DIR =	mem/
MEM_SRC =	ft_bzero.c \
			ft_memchr.c \
			ft_memcpy.c \
			ft_memset.c \
			ft_calloc.c \
			ft_memcmp.c \
			ft_memmove.c \

#=-=-=-=-=-=-PRINTF-=-=-=-=-=#

SRC	+=	$(addprefix $(PRINTF_DIR), $(PRINTF_SRC))

PRINTF_DIR	=	printf/
PRINTF_DIR	=	ft_char.c \
				ft_integer.c \
				ft_printf.c \
				ft_printstr.c \
				ft_unsigned.c \
				ft_hexa.c \
				ft_pointer.c \
				ft_printflen.c \
				ft_str.c \
				ft_utils.c \

#=-=-=-=-=-=-PUT-=-=-=-=-=#

SRC	+=	$(addprefix $(PUT_DIR), $(PUT_SRC))

PUT_DIR	=	put/
PUT_SRC	=	ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \

#=-=-=-=-=-=-STRINT-=-=-=-=-=#

SRC	+=	$(addprefix $(STRINT_DIR), $(STRINT_SRC))

STRINT_DIR	=	strint/
STRINT_SRC	=	ft_atoi.c \
				ft_strdup.c \
				ft_strlcpy.c \
				ft_strnstr.c \
				ft_itoa.c \
				ft_striteri.c \
				ft_strlen.c \
				ft_strrchr.c \
				ft_split.c \
				ft_strjoin.c \
				ft_strmapi.c \
				ft_strtrim.c \
				ft_strchr.c \
				ft_strlcat.c \
				ft_strncmp.c \
				ft_substr.c \

#=-=-=-=-=-=-TO-=-=-=-=-=#

SRC	+=	$(addprefix $(INTO_DIR), $(INTO_SRC))

INTO_DIR	=	into/
INTO_SRC	=	ft_tolower.c \
				ft_toupper.c \
			
#=-=-=-=-=-=-COMPIL-=-=-=-=-=#

CC		=	cc

FLAGS	+=	-Wall -Wextra -Werror
