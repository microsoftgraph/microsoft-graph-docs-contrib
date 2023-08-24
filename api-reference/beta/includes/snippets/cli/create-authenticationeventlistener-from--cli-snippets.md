---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity authentication-event-listeners create --body '{\
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",\
    "conditions": {\
        "applications": {\
            "includeAllApplications": false,\
            "includeApplications": [\
                {\
                    "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"\
                }\
            ]\
        }\
    },\
    "priority": 500,\
    "handler": {\
        "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtensionHandler",\
        "customExtension": {\
            "id": "6fc5012e-7665-43d6-9708-4370863f4e6e"\
        }\
    }\
}\
'

```