---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users send-mail post --user-id {user-id} --body '{\
  "message": {\
    "subject": "9/9/2018: concert",\
    "body": {\
      "contentType": "HTML",\
      "content": "The group represents Nevada."\
    },\
    "toRecipients": [\
      {\
        "emailAddress": {\
          "address": "AlexW@contoso.OnMicrosoft.com"\
        }\
      }\
    ],\
    "internetMessageHeaders":[\
      {\
        "name":"x-custom-header-group-name",\
        "value":"Nevada"\
      },\
      {\
        "name":"x-custom-header-group-id",\
        "value":"NV001"\
      }\
    ]\
  }\
}\
'

```