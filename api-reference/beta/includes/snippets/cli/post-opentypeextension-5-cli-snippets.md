---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups conversations create --group-id {group-id} --body '{\
  "Topic": "Does anyone have a second?",\
  "Threads": [\
    {\
      "Posts": [\
        {\
          "Body": {\
            "ContentType": "HTML",\
            "Content": "This is urgent!"\
          },\
          "Extensions": [\
            {\
              "@odata.type": "microsoft.graph.openTypeExtension",\
              "extensionName": "Com.Contoso.Benefits",\
              "companyName": "Contoso",\
              "expirationDate": "2016-08-03T11:00:00.000Z",\
              "topPicks": [\
                "Employees only",\
                "Add spouse or guest",\
                "Add family"\
              ]\
            }\
          ]\
        }\
      ]\
    }\
  ]\
}\
'

```