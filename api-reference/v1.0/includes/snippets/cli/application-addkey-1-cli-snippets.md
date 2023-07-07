---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc applications add-key post --application-id {application-id} --body '{\
    "keyCredential": {\
        "type": "AsymmetricX509Cert",\
        "usage": "Verify",\
        "key": "MIIDYDCCAki..."\
    },\
    "passwordCredential": null,\
    "proof":"eyJ0eXAiOiJ..."\
}\
'

```