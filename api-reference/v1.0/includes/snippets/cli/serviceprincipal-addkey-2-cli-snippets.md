---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc service-principals add-key post --service-principal-id {servicePrincipal-id} --body '{\
    "keyCredential": {\
        "type": "X509CertAndPassword",\
        "usage": "Sign",\
        "key": "MIIDYDCCAki..."\
    },\
    "passwordCredential": {\
        "secretText": "MKTr0w1..."\
    },\
    "proof":"eyJ0eXAiOiJ..."\
}\
'

```