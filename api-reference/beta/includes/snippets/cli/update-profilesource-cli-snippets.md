---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta admin people profile-sources-with-source-id patch --source-id {source-id} --body '{\
  "@odata.type": "#microsoft.graph.profileSource",\
  "sourceId": "bamboohr1",\
  "kind": "BambooHR",\
  "displayName": "BambooHR Updated",\
  "webUrl": "https://bamboohr.contoso.com/login",\
  "localizations": [\
    {\
      "displayName": "HR-Platform",\
      "webUrl": "http://bamboohr.contoso.com/en-us/login",\
      "languageTag": "en-us"\
    },\
    {\
      "displayName": "HR-Plattform",\
      "webUrl": "http://bamboohr.contoso.com/de/login",\
      "languageTag": "de"\
    }\
  ]\
}\
'

```