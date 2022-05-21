FROM ubuntu
RUN apt-get update
RUN apt install gcc gdb gcc-multilib nano -y
COPY sp2_2.s .
RUN gcc -m32 sp2_2.s -o sp2_2
CMD ./sp2_2
