FROM torizon/arm64v8-debian-qt5-wayland:buster AS build

# qmake build dependencies
RUN apt update && apt remove -y libgl1 && apt install -y \
    build-essential \
    qt5-default \
    qt5-qmake \
    qtdeclarative5-dev \
    && rm -rf /var/lib/apt/lists/*

# copy source-code
WORKDIR /home/torizon/source
COPY . .

# Generate makefile
RUN qmake -o Makefile virtualletter.pro \
    && make -j$(nproc)

FROM torizon/arm64v8-debian-qt5-wayland:buster

# Runtime dependencies
# Workaround for libgl, symlink libGL.so.1 to libGL.so.1.2
RUN apt-get update && apt-get install -y --no-install-recommends \
    qml-module-qtquick-controls \
    qml-module-qtquick-controls2 \
    qml-module-qtquick2 \
    qml-module-qtwayland-compositor \
    qtwayland5 \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/lib/aarch64-linux-gnu/libGL.so.1 /usr/lib/aarch64-linux-gnu/libGL.so.1.2

WORKDIR /home/torizon/
COPY --from=build /home/torizon/source/release .
COPY --chown=torizon:torizon photos /home/torizon/photos

USER torizon
CMD [ "/home/torizon/virtualletter" ]