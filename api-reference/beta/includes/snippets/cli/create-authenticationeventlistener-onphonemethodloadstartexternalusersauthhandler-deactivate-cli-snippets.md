---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc identity authentication-event-listeners create --body '{\
    "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartListener",  \
    "conditions": {  \
        "applications": {  \
            "includeApplications": [  \
                "3dfff01b-0afb-4a07-967f-d1ccbd81102a"  \
            ]  \
        }  \
    },  \
    "priority": 500,  \
    "handler": {  \
        "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartExternalUsersAuthHandler",\
        "smsOptions": { \
            "includeAdditionalRegions": [], \
            "excludeRegions": [1001, 99, 777] \
        }\
    } \
}\
'

```