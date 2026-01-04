FROM ruby:3.3

WORKDIR /service

COPY Gemfile /service/
RUN bundle install

# コンテナ起動時に実行させるentrypoint.shを追加
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Rails サーバ起動
CMD ["rails", "server", "-b", "0.0.0.0"]