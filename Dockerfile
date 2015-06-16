FROM jfroche/docker-plone:4.3
COPY . /code/
USER root
RUN chown -R plone .
USER plone
RUN bin/buildout -Nv
CMD bin/instance fg
