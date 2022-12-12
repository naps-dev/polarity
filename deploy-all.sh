kubectl create namespace polarity

kubectl create secret docker-registry regcred \
  --docker-server=${AWS_ACCOUNT}.dkr.ecr.${AWS_REGION}.amazonaws.com \
  --docker-username=AWS \
  --docker-password=$(aws ecr get-login-password) \
  --namespace=polarity

helm install polarity ./chart -n polarity --create-namespace

### Zarf stuff
flux create secret git polarity-auth \
  --url=ssh://git@github.com/naps-dev/polarity \
  --private-key-file=${HOME}/.ssh/id_rsa \
  --namespace=polarity