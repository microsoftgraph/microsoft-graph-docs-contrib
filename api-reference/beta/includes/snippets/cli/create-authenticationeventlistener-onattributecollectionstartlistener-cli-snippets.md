---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity authentication-event-listeners create --body '{\
    "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",\
    "priority": 500,\
    "conditions": {\
        "applications": {\
            "includeAllApplications": false,\
            "includeApplications": [\
                {\
                    "appId": "a7eed01f-a333-4983-bc6b-d359ec9e5eef"\
                }\
            ]\
        }\
    },\
    "handler": {\
        "@odata.type": "#microsoft.graph.onAttributeCollectionStartCustomExtensionHandler",\
        "customExtension": {\
            "id": "2d9c3e8d-88a9-444e-8c4c-f0c6c4fe1c02"\
        }\
    }\
}\
'

```