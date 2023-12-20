---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users send-mail post --user-id {user-id} --body '{\
  "message": {\
    "subject": "Meet for lunch?",\
    "body": {\
      "contentType": "Text",\
      "content": "The new cafeteria is open."\
    },\
    "toRecipients": [\
      {\
        "emailAddress": {\
          "address": "samanthab@contoso.onmicrosoft.com"\
        }\
      }\
    ],\
    "ccRecipients": [\
      {\
        "emailAddress": {\
          "address": "danas@contoso.onmicrosoft.com"\
        }\
      }\
    ]\
  },\
  "saveToSentItems": "false"\
}\
'

```