FROM nimlang/nim

WORKDIR .

COPY . .

RUN nimble build -y --verbose

ENV PORT=1313

EXPOSE 1313

CMD ["./bin/isari"]