# 0. prerequisites

-   hetzner account
-   create new hetzner cloud project
-   create api key
-   create `./playbooks/hcloud.yml` with following contents

```yml
plugin: hcloud
token: YOUR_API_KEY_HERE
keyed_groups:
    - key: labels
      prefix: hcloud_labels
```

-   edit the pektin-config

# 1. create the ssh keys with

`bash create-keys.sh`

# 2. run it

`bash setup.sh`
