---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta users messages forward post --user-id {user-id} --message-id {message-id} --body '{\
  "message":{\
    "isDeliveryReceiptRequested": true,\
    "toRecipients":[\
      {\
        "emailAddress": {\
          "address":"danas@contoso.com",\
          "name":"Dana Swope"\
        }\
      }\
     ]\
  },\
  "comment": "Dana, just want to make sure you get this."\
}\
'

```