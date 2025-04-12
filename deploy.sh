set -e
GOOS=linux GOARCH=arm64 go build -o ./deploy/app
rsync -avz --delete -e ssh ./deploy/ pi3:$HOME/nats
ssh pi3 "$HOME/nats/remote-deploy.sh"

