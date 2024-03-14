---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity authentication-event-listeners create --body '{\
    "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitListener",\
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
        "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler",\
        "customExtension": {\
            "id": "66867d1f-7824-4f38-aad1-75da1ad09ee2"\
        }\
    }\
}\
'

```