FROM google/cloud-sdk:alpine

# Note: Latest version of helm may be found at:
# https://github.com/kubernetes/helm/releases
ENV HELM_VERSION="v2.13.1"

# Set workdir
WORKDIR /opt/Enrise/GCloudToolBox

# Patched kubectl to show EOL notice
COPY kubectl-msg /bin/kubectl

# Install additions
RUN gcloud components install beta kubectl \
    && apk add --update --no-cache \
    gettext \
    make \
    jq \
    && wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz -O - | tar -xzO linux-amd64/helm > /bin/helm \
    && chmod +x /bin/helm

RUN mv /google-cloud-sdk/bin/kubectl /google-cloud-sdk/bin/real-kubectl

# Wait for rollout script
COPY wait-for-rollout.sh /bin/wait-for-rollout
