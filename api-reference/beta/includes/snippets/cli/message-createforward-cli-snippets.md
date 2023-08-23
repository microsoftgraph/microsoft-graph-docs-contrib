---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users messages create-forward post --user-id {user-id} --message-id {message-id} --body '{\
  "message":{  \
    "isDeliveryReceiptRequested": true,\
    "toRecipients":[\
      {\
        "emailAddress": {\
          "address":"danas@contoso.onmicrosoft.com",\
          "name":"Dana Swope"\
        }\
      }\
     ]\
  },\
  "comment": "Dana, just want to make sure you get this; you'll need this if the project gets approved." \
}\
'

```