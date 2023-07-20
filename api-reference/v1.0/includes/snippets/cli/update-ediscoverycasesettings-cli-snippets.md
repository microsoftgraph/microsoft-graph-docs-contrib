---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc security cases ediscovery-cases settings patch --ediscovery-case-id {ediscoveryCase-id} --body '{\
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