# Intentionally old image (for Trivy demo only)
FROM alpine:3.10

# Metadata
LABEL maintainer="trivy-demo"
LABEL purpose="trivy-image-scan-demo"

# Install outdated & vulnerable packages
RUN apk update && \
    apk add --no-cache \
      bash \
      curl \
      openssl \
      busybox \
      git && \
    rm -rf /var/cache/apk/*

# Run as root (intentional)
USER root

# Dummy app file
RUN echo "Trivy image scan demo" > /app.txt

CMD ["sh"]
