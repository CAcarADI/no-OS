
ifneq ($(if $(findstring ftd2xx, $(LIBRARIES)), 1),)
INCS += $(DRIVERS)/platform/ftd2xx/mpsse/ftd2xx_gpio.h
SRCS += $(DRIVERS)/platform/ftd2xx/mpsse/ftd2xx_gpio.c	\
	$(DRIVERS)/platform/ftd2xx/mpsse/ftd2xx_delay.c
else
INCS += $(PLATFORM_DRIVERS)/linux_gpio.h		\
	$(PLATFORM_DRIVERS)/linux_uart.h	\

SRCS += $(PLATFORM_DRIVERS)/linux_delay.c	\
        $(PLATFORM_DRIVERS)/linux_gpio.c		\
	$(PLATFORM_DRIVERS)/linux_uart.c
endif
