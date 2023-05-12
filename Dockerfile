FROM cloudbees/cbflow-tools:2023.04.0.162443_3.2.41_20230407

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

