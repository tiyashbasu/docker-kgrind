FROM ubuntu:18.04 as valgrind

RUN apt-get update && \
    apt-get install -y \
    libfontconfig1 \
    libxrender1 \
    libxi6 \
    libxtst6 \
    valgrind \
    kcachegrind \
    graphviz

WORKDIR /valgrind/subject

FROM valgrind as kgrind

ENV DISPLAY :0
ENV XDG_RUNTIME_DIR /valgrind/subject

USER 1000

CMD kcachegrind
