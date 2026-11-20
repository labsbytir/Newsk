# Newsk Pi provisioning — locked-down podman + Newsk on first boot.
# Run on Pi OS Lite (64-bit):  curl -sL <this-dir>/provision.sh | sh
set -e

sudo apt-get update
sudo apt-get install -y podman

# Registries: only what Newsk needs.
sudo mkdir -p /etc/containers
sudo cp registries.conf /etc/containers/registries.conf
sudo cp policy.json /etc/containers/policy.json

# Storage: overlay, quota to protect the SD card.
sudo mkdir -p /etc/containers
sudo cp storage.conf /etc/containers/storage.conf

# Runtime defaults: memory + log caps for small boards.
mkdir -p ~/.config/containers
cp containers.conf ~/.config/containers/containers.conf

# Newsk service.
mkdir -p ~/newsk-data
sudo cp newsk.service /etc/systemd/system/newsk.service
sudo systemctl daemon-reload
sudo systemctl enable --now newsk.service
echo "Newsk provisioned. Data in ~/newsk-data."
