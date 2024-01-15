---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity b2x-user-flows create --body '{\
    "id": "UserFlowWithAPIConnector",\
    "userFlowType": "signUpOrSignIn",\
    "userFlowTypeVersion": 1,\
    "apiConnectorConfiguration":{\
        "postFederationSignup":{\
            "@odata.id": "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"\
        },\
        "postAttributeCollection":{\
            "@odata.id": "https://graph.microsoft.com/v1/identity/apiConnectors/{id}"\
        }\
    }\
}\
'

```