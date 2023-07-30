---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc identity conditional-access policies create --body '{\
    "displayName": "Access to EXO requires MFA",\
    "state": "enabled",\
    "conditions": {\
        "clientAppTypes": [\
            "mobileAppsAndDesktopClients",\
            "browser"\
        ],\
        "applications": {\
            "includeApplications": [\
                "00000002-0000-0ff1-ce00-000000000000"\
            ]\
        },\
        "users": {\
            "includeGroups": ["ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"]\
        },\
        "locations": {\
            "includeLocations": [\
                "All"\
            ],\
            "excludeLocations": [\
                "AllTrusted"\
            ]\
        }\
    },\
    "grantControls": {\
        "operator": "OR",\
        "builtInControls": [\
            "mfa"\
        ]\
    }\
}\
'

```