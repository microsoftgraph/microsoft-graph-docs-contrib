---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users messages create-reply-all post --user-id {user-id} --message-id {message-id} --body '{\
    "message":{\
      "attachments": [ \
        { \
          "@odata.type": "#microsoft.graph.fileAttachment", \
          "name": "guidelines.txt", \
          "contentBytes": "bWFjIGFuZCBjaGVlc2UgdG9kYXk=" \
        } \
      ]\
    },\
    "comment": "if the project gets approved, please take a look at the attached guidelines before you decide on the name." \
}\
'

```