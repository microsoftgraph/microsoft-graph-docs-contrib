---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users messages create --user-id {user-id} --body '{\
  "subject": "Annual review",\
  "body": {\
    "contentType": "HTML",\
    "content": "You should be proud!"\
  },\
  "toRecipients": [\
    {\
      "emailAddress": {\
        "address": "rufus@contoso.com"\
      }\
    }\
  ],\
  "extensions": [\
    {\
      "@odata.type": "microsoft.graph.openTypeExtension",\
      "extensionName": "Com.Contoso.Referral",\
      "companyName": "Wingtip Toys",\
      "expirationDate": "2015-12-30T11:00:00.000Z",\
      "dealValue": 10000\
    }\
  ]\
}\
'

```