---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta compliance ediscovery cases settings patch --case-id {case-id} --body '{\
    "redundancyDetection": {\
        "isEnabled": false,\
        "similarityThreshold": 70,\
        "minWords": 12,\
        "maxWords": 400000\
    },\
    "topicModeling": {\
        "isEnabled": false,\
        "ignoreNumbers": false,\
        "topicCount": 50,\
        "dynamicallyAdjustTopicCount": false\
    },\
    "ocr": {\
        "isEnabled": true,\
        "maxImageSize": 12000\
    }\
}\
'

```