---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc policies default-app-management-policy patch --body '{\
    "isEnabled": true,\
    "applicationRestrictions": {\
        "passwordCredentials": [\
            {\
                "restrictionType": "passwordAddition",\
                "maxLifetime": null,\
                "restrictForAppsCreatedAfterDateTime": "2021-01-01T10:37:00Z"\
            },\
            {\
                "restrictionType": "passwordLifetime",\
                "maxLifetime": "P4DT12H30M5S",\
                "restrictForAppsCreatedAfterDateTime": "2017-01-01T10:37:00Z"\
            },\
            {\
                "restrictionType": "symmetricKeyAddition",\
                "maxLifetime": null,\
                "restrictForAppsCreatedAfterDateTime": "2021-01-01T10:37:00Z"\
            },\
            {\
                "restrictionType": "customPasswordAddition",\
                "maxLifetime": null,\
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"\
            },\
            {\
                "restrictionType": "symmetricKeyLifetime",\
                "maxLifetime": "P40D",\
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"\
            }\
        ],\
        "keyCredentials":[\
            {\
                "restrictionType": "asymmetricKeyLifetime",\
                "maxLifetime": "P30D",\
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"\
            },\
        ]\
    }\
}\
'

```