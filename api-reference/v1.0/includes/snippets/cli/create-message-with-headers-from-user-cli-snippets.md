---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users messages create --user-id {user-id} --body '{\
    "subject":"9/8/2018: concert",\
    "body":{\
        "contentType":"HTML",\
        "content":"The group represents Washington."\
    },\
    "toRecipients":[\
        {\
            "emailAddress":{\
                "address":"AlexW@contoso.OnMicrosoft.com"\
            }\
        }\
    ],\
    "internetMessageHeaders":[\
        {\
            "name":"x-custom-header-group-name",\
            "value":"Washington"\
        },\
        {\
            "name":"x-custom-header-group-id",\
            "value":"WA001"\
        }\
    ]\
}\
'

```