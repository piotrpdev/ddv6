FROM curlimages/curl:8.5.0

COPY ddv6.sh /usr/local/bin/

CMD ["/usr/local/bin/ddv6.sh"]
