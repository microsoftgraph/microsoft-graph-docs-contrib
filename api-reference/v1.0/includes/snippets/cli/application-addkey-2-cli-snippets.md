---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc applications add-key post --application-id {application-id} --body '{\
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