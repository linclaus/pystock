#/bin/sh
set -x

CI_COMMIT_TAG=$(git describe --always --tags)

docker build -t linclaus/pystock:$CI_COMMIT_TAG -f docker/Dockerfile .
docker push linclaus/pystock:$CI_COMMIT_TAG


