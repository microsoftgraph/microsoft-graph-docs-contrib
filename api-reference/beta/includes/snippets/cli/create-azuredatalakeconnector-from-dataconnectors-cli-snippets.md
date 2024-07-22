---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta external industry-data data-connectors create --body '{\
    "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",\
    "displayName": "CSV connector",\
    "sourceSystem@odata.bind": "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')",\
    "fileFormat": {\
      "@odata.type": "microsoft.graph.industryData.fileFormatReferenceValue",\
      "code": "schoolDataSyncV1"\
    }\
}\
'

```