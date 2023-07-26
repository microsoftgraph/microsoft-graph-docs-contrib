---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users send-mail post --user-id {user-id} --body '{\
  "message": {\
    "subject": "Meet for lunch?",\
    "body": {\
      "contentType": "Text",\
      "content": "The new cafeteria is open."\
    },\
    "toRecipients": [\
      {\
        "emailAddress": {\
          "address": "frannis@contoso.onmicrosoft.com"\
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