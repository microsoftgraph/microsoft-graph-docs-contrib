---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta subscriptions create --body '{\
   "changeType": "created",\
   "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",\
   "resource": "me/mailFolders('Inbox')/messages",\
   "expirationDateTime":"2016-11-20T18:23:45.9356913Z",\
   "clientState": "secretClientValue",\
   "latestSupportedTlsVersion": "v1_2"\
}\
'

```