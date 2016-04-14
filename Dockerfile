FROM base-docker.points.com:80/ubuntu_base
COPY periodic_scheduler.py /content/
RUN apt-get -y install wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install --upgrade setuptools
RUN pip install requests
RUN pip install apscheduler
CMD ["python", "./content/periodic_scheduler.py"]