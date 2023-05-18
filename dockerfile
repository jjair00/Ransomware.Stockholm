FROM debian

# Instalar paquetes necesarios
RUN apt-get update && apt-get install -y \
    sudo \
    python3\
    python3-pip

RUN pip install cryptography

# Crear usuario
RUN useradd -m jcueto-r && \
    echo "jcueto-r:password" | chpasswd
RUN usermod -aG sudo jcueto-r

USER jcueto-r
RUN mkdir /home/jcueto-r/infection

# RUN sudo chown jcueto-r /home/infection/
# RUN sudo chown -R jcueto-r /home/infection/

COPY stockholm.py /home/jcueto-r/stockholm.py
COPY infection /home/jcueto-r/infection
# COPY wannacry.pdf /home/jcueto-r/infection/
# COPY ejemplos-ppt.ppt /home/jcueto-r/infection/
# COPY nginx.conf /home/jcueto-r/infection/
# COPY download(1).jpeg /home/jcueto-r/infection/
# COPY download-_2_copy.png /home/jcueto-r/infection/
# COPY download-_3_copy.bmp /home/jcueto-r/infection/
# COPY download-_12_copy.jpg /home/jcueto-r/infection/
# COPY download.jpeg /home/jcueto-r/infection/
# COPY download212copy.gif /home/jcueto-r/infection/
# COPY pastor-belga-malinois_00000000_230421101641_480x480copy.jpeg /home/jcueto-r/infection/
# COPY perro-1_514aad3b_221212161023_1280x720copy.jpeg /home/jcueto-r/infection/

# COPY torrc /etc/tor/torrc
# COPY sshd_config /etc/ssh/sshd_config
# COPY rickroll-roll.gif /var/www/html/

# # Exponer puertos
# EXPOSE 80
# EXPOSE 4242

# # Iniciar servicios
# CMD service ssh start && nginx -g 'daemon off;' && tor