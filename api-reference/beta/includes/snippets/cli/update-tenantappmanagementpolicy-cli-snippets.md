---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta policies default-app-management-policy patch --body '{\
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
                "maxLifetime": "P90D",\
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
                "maxLifetime": "P30D",\
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"\
            }\
        ],\
        "keyCredentials":[\
            {\
                "restrictionType": "asymmetricKeyLifetime",\
                "maxLifetime": "P30D",\
                "restrictForAppsCreatedAfterDateTime": "2015-01-01T10:37:00Z"\
            },\
            {\
                "restrictionType": "trustedCertificateAuthority",\
                "restrictForAppsCreatedAfterDateTime": "2019-10-19T10:37:00Z",\
                "certificateBasedApplicationConfigurationIds": [\
                    "eec5ba11-2fc0-4113-83a2-ed986ed13743",\
                    "bb8e164b-f9ed-4b98-bc45-65eddc14f4c1"\
                ],\
                "maxLifetime": null\
            }\
        ]\
    }\
}\
'

```