---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc drives items invite post --drive-id {drive-id} --drive-item-id {driveItem-id} --body '{\
  "recipients": [\
    {\
      "email": "ryan@contoso.com"\
    }\
  ],\
  "message": "Here's the file that we're collaborating on.",\
  "requireSignIn": true,\
  "sendInvitation": true,\
  "roles": [ "write" ],\
  "password": "password123",\
  "expirationDateTime": "2018-07-15T14:00:00.000Z"\
}\
'

```