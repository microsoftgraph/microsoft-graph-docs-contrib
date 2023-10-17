---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security cases ediscovery-cases settings patch --ediscovery-case-id {ediscoveryCase-id} --body '{\
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseSettings",\
  "redundancyDetection": {\
    "@odata.type": "microsoft.graph.security.redundancyDetectionSettings"\
  },\
  "topicModeling": {\
    "@odata.type": "microsoft.graph.security.topicModelingSettings"\
  },\
  "ocr": {\
    "@odata.type": "microsoft.graph.security.ocrSettings"\
  }\
}\
'

```