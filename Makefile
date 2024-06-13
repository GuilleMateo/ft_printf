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

NAME 		= libftprintf.a
INCLUDE		= include
LIBFT 		= libft
CC 			= gcc
CFLAGS 		= -Wall -Wextra -Werror -I
SRC_DIR		= src/
OBJ_DIR		= obj/
RM			= rm -f
AR			= ar rcs

SRCS_FILES 	= ft_print_hex \
			  ft_print_ptr \
			  ft_printf \
			  ft_print_nbr \
			  ft_print_percent \
			  ft_print_str \
			  ft_putstr \
			  ft_print_unsigned

BLANC 		= \033[0;39m
JAUNE 		= \033[0;93m
VERT 		= \033[0;92m
ROUGE 		= \033[0;91m
BLEU 		= \033[0;94m
MAGENTA 	= \033[0;95m

SRC 		= $(addprefix $(SRC_DIR), $(addsuffix .c, $(SRCS_FILES)))
OBJ 		= $(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRCS_FILES)))

OBJF		= .cache_exists

all: $(NAME)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c | $(OBJF)
		@echo "$(JAUNE)Compiling: $< $(VERT)"
		@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

$(NAME): $(OBJ)
		
		@make -C $(LIBFT)
		@cp libft/libft.a .
		@mv libft.a $(NAME)
		@$(AR) $(NAME) $(OBJ)
		@echo "$(BLEU)$(LIBFT) est prête"

$(OBJF):
		@mkdir -p $(OBJ_DIR)

clean:
		@echo "$(ROUGE) $< $@"
		@$(RM) -rf $(OBJ_DIR)
		@make clean -C $(LIBFT)

fclean: clean
		@$(RM) -f $(OBJ_DIR)
		@$(RM) -f $(LIBFT)/libft.a

re: fclean all

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
