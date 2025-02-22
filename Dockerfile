ARG VERSION=latest

FROM ghcr.io/esphome/esphome:${VERSION}

ENV PLATFORMIO_GLOBALLIB_DIR=

# Add a new RUN command to modify gpio_esp32_c3.py
RUN sed -i '12,13s/^/#/' /esphome/esphome/components/esp32/gpio_esp32_c3.py

COPY entrypoint.py /entrypoint.py

ENTRYPOINT ["/entrypoint.py"]
