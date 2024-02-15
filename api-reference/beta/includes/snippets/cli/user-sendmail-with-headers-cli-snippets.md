---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users send-mail post --user-id {user-id} --body '{
\
  "message": {
\
    "subject": "9/9/2018: concert",
\
    "body": {
\
      "contentType": "HTML",
\
      "content": "The AlexW@contoso.com
\
    },
\
    "toRecipients": [
\
      {
\
        "emailAddress": {
\
          "address": "AlexW@contoso.com"
\
        }
\
      }
\
    ],
\
    "internetMessageHeaders": [
\
      {
\
        "name": "x-custom-header-group-name",
\
        "value": "Nevada"
\
      },
\
      {
\
        "name": "x-custom-header-group-id",
\
        "value": "NV001"
\
      }
\
    ]
\
  }
\
}
\
'

```