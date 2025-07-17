---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions backup-restore email-notifications-setting patch --body '{\
  "isEnabled": "true",\
  "additionalEvents": "restoreAndPolicyUpdates",\
  "recipients": {\
    "recipients": {\
      "role": "custom",\
      "customRecipients": [\
        {\
          "email": "amala@contoso.com"\
        },\
        {\
          "email": "conrad@contoso.com"\
        },\
        {\
          "email": "lothar@contoso.com"\
        }\
      ]\
    }\
  }\
}\
'

```