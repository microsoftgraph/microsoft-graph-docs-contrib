---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity authentication-event-listeners patch --authentication-event-listener-id {authenticationEventListener-id} --body '{\
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",\
    "conditions": {\
        "applications": {\
            "includeApplications": [\
                {\
                    "appId": "a13d0fc1-04ab-4ede-b215-63de0174cbb4"\
                }\
            ]\
        }\
    },\
}\
'

```