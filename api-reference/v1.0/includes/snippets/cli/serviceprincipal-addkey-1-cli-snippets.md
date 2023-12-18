---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc service-principals add-key post --service-principal-id {servicePrincipal-id} --body '{\
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