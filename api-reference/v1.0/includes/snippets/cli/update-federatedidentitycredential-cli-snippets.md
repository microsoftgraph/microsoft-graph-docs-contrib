---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc applications federated-identity-credentials patch --application-id {application-id} --federated-identity-credential-id {federatedIdentityCredential-id} --body '{\
    "name": "testing02",\
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",\
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",\
    "description": "Updated description",\
    "audiences": [\
        "api://AzureADTokenExchange"\
    ]\
}\
'

```