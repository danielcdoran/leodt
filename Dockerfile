# Install Operating system and dependencies to build and run Flutter
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
FROM flutter AS build-env

# define variables
ARG FLUTTER_SDK=/home/developer/flutter
ARG FLUTTER_VERSION=3.16.9
ARG APP=/home/developer/app/
ARG UID=1000
ARG GID=1000

ENV PUB_HOSTED_URL=https://pub.flutter-io.cn
ENV FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# Set up new user
#RUN groupadd -r developer -g $GID && useradd --no-log-init -r -g developer developer -u $UID
USER developer

# stup new folder as the working directory
WORKDIR $APP

# #RUN flutter doctor

# # Enable flutter web
# RUN flutter channel stable
# RUN flutter upgrade
# RUN flutter config --enable-web
# #RUN flutter clean
# RUN flutter pub get
# RUN flutter build web

# EXPOSE 9000

# # make server startup script executable and start the web server
# # RUN ["chmod", "+x", "/home/developer/app/server/server.sh"]

# # ENTRYPOINT [ "/home/developer/app/server/server.sh"]
