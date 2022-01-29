import { checkConfig } from "@pektin/config";
import {
    mergeConfig,
    createConfigureFloatingIpsScript
} from "@pektin/config/dist/js/ansible/hcloud/index.js";

await mergeConfig("/pektin-compose/pektin-config.json", "/pektin-compose/ansible/.tmp/");
await createConfigureFloatingIpsScript(
    "/pektin-compose/pektin-config.json",
    "/pektin-compose/ansible/.tmp/floating-ips/configure-scripts/"
);

await checkConfig(
    "/pektin-compose/pektin-config.json",
    "node_modules/@pektin/config/pektin-config.schema.yml"
);
