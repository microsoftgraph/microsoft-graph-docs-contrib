---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups threads posts reply post --group-id {group-id} --conversation-thread-id {conversationThread-id} --post-id {post-id} --body '{\
  "post": {\
    "body": {\
      "contentType": "html",\
      "content": "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"\
    },\
  "extensions": [\
    {\
      "@odata.type": "microsoft.graph.openTypeExtension",\
      "extensionName": "Com.Contoso.HR",\
      "companyName": "Contoso",\
      "expirationDate": "2015-07-03T13:04:00.000Z",\
      "topPicks": [\
        "Employees only",\
        "Add spouse or guest",\
        "Add family"\
      ]\
    }\
  ]\
  }\
}\
'

```