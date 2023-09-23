FROM nimlang/nim

WORKDIR .

COPY . .

RUN nimble install -d -y --verbose

ENV PORT=1313

EXPOSE 1313

CMD ["nimble", "build", "--verbose"]