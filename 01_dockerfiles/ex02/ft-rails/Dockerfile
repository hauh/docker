FROM ruby
ONBUILD RUN \
	apt-get update && \
	apt-get upgrade -y && \
    	apt-get install build-essential -y && \
    	apt-get install nodejs sqlite3 -y
ONBUILD COPY sample_rails_app /opt/app
WORKDIR /opt/app
ONBUILD RUN bundle install && \
	    rails db:migrate && \
	    rails db:seed
