FROM ruby
RUN \
	apt-get update && \
	apt-get upgrade -y && \
    	apt-get install -y build-essential nodejs sqlite3 curl && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
	apt-get update && apt-get install -y yarn
ONBUILD COPY sample_app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD RUN \
	bundle update --bundler && \
	bundle install && \
	yarn install && \
	rails db:migrate && \
	rails test && \
	rails db:seed
