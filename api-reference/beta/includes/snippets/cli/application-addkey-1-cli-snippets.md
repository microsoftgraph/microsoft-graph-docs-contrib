---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta applications add-key post --application-id {application-id} --body '{\
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