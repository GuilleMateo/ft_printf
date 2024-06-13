# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mguille <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/13 21:19:28 by mguille           #+#    #+#              #
#    Updated: 2023/01/20 23:01:39 by mguille          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
INCLUDE	= ../include
SRC_DIR = src/
OBJ_DIR	= obj/
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I
RM	=	rm -f
AR	=	ar rcs


SRC_FILES = ft_atoi \
		ft_bzero \
		ft_calloc \
		ft_isalnum \
		ft_isalpha \
		ft_isascii \
		ft_isdigit \
		ft_isprint \
		ft_itoa \
		ft_memchr \
		ft_memcmp \
		ft_memcpy \
		ft_memmove \
		ft_memset \
		ft_putchar_fd \
		ft_putendl_fd \
		ft_putnbr_fd \
		ft_putstr_fd \
		ft_split \
		ft_strchr \
		ft_strcmp \
		ft_strdup \
		ft_striteri \
		ft_strjoin \
		ft_strlcat \
		ft_strlcpy \
		ft_strlen \
		ft_strmapi \
		ft_strncmp \
		ft_strnstr \
		ft_strrchr \
		ft_strtrim \
		ft_substr \
		ft_tolower \
		ft_toupper \
		ft_lstadd_back \
		ft_lstadd_front \
		ft_lstclear \
		ft_lstdelone \
		ft_lstiter \
		ft_lstlast \
		ft_lstmap \
		ft_lstnew \
		ft_lstsize

BLANC 		= \033[0;39m
JAUNE 		= \033[0;93m
VERT 		= \033[0;92m
ROUGE 		= \033[0;91m
BLEU 		= \033[0;94m
MAGENTA 	= \033[0;95m

SRC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
		@echo "$(JAUNE)Compiling: $< $(VERT)"
		@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@ 

clean:
		@echo "$(ROUGE)"
		$(RM) $(OBJ)

fclean: clean
		$(RM) $(NAME)

re: fclean $(NAME)

norm:
		@echo "$(MAGENTA)"
		@norminette $(SRC) $(INCLUDE) $(LIBFT)

.PHONY: all clean fclean re norm
# CC: variable qui contient le nom du compilateur.
# CFLAGS: variables qui contient les options de compilation.
# SRCS: variable qui contient la liste des fichiers source du projet.
# OBJS: variable qui contient la liste des fichiers objets générés à partir des fichiers sources.
# NAME: variable qui contient le nom de la bibliothèque.
# all: cible par défaut qui construit tous les fichiers nécessaires.
# $(NAME): cible pour créer la bibliothèque à partir des fichiers objets.
# $(OBJS): dépendance de la cible $(NAME) - les fichiers objets nécessaires pour construire la bibliothèque.
# ar rcs $(NAME) $(OBJS): commande pour créer la bibliothèque statique.
# %.o: %.c: règle générique pour la compilation de fichiers source en fichiers objets.
# clean: cible pour nettoyer les fichiers objets.
# fclean: cible pour nettoyer les fichiers objets et la bibliothèque.
# re: cible pour reconstruire le projet entier en exécutant fclean et all.
# .PHONY: déclare les cibles "all", "clean", "fclean" et "re" comme des cibles "factices" pour s'assurer qu'elles
# seront toujours exécutées, même si des fichiers portant leur nom existent déjà.
