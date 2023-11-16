---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users security information-protection sensitivity-labels microsoft-graph-security-evaluate-classification-results post --user-id {user-id} --body '{\
    "contentInfo": {\
        "@odata.type": "#microsoft.graph.security.contentInfo",\
        "format@odata.type": "#microsoft.graph.security.contentFormat",\
        "format": "default",\
        "contentFormat": "File",\
        "identifier": "c:\\user\\new.docx",\
        "state@odata.type": "#microsoft.graph.security.contentState",\
        "state": "rest",\
        "metadata": []\
    },\
    "classificationResults": [\
        {\
            "sensitiveTypeId": "50842eb7-edc8-4019-85dd-5a5c1f2bb085", //Credit Card \
            "count": 7,\
            "confidenceLevel": 99\
        }\
    ]\
}\
'

```