FROM ubuntu:16.04

ENV DEP="/opt/docker-entrypoint.sh"
RUN touch $DEP
RUN echo "#!/bin/bash" > $DEP
RUN echo "exec /bin/bash" >> $DEP
RUN chmod +x $DEP

ENTRYPOINT ["/opt/docker-entrypoint.sh"]

