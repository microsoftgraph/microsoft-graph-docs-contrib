---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta users contacts patch --user-id {user-id} --contact-id {contact-id} --body '{\
    "emailAddresses":[\
        {\
            "type":"personal",\
            "name":"Pavel Bansky",\
            "address":"pavelb@contoso.com"\
        },\
        {\
          "address": "pavelb@contoso.com",\
          "name": "Pavel Bansky",\
          "type": "other",\
          "otherLabel": "Volunteer work"\
        }\
    ]\
}\
'

```