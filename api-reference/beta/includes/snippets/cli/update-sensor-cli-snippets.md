---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta security identities sensors patch --sensor-id {sensor-id} --body '{\
  "settings": {\
    "description": "dc1 settings new description",\
    "domainControllerDnsNames": [\
        "DC1.domain1.test.local"\
    ],\
    "isDelayedDeploymentEnabled": false\
  }\
}\
'

```