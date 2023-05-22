# azure-secauto-talk

```bash
# login and check your default subscription
az login
az account list -o table
```

```bash
# get utils and create Azure SP
curl -LO https://raw.githubusercontent.com/mkol5222/utils/main/arm-principal.sh
chmod +x ./arm-principal.sh
# review before run
code ./arm-principal.sh
# run with optional cred. store to 1Password
./arm-principal.sh
```

```bash
#  and tfstate backend in Azure
curl -LO https://raw.githubusercontent.com/mkol5222/utils/main/az-tfbackend.sh
chmod +x ./az-tfbackend.sh
# review before run
code ./az-tfbackend.sh
# run with optional cred. store to 1Password
./az-tfbackend.sh
```