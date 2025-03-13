---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity b2c-user-flows create --body '{\
    "id": "UserFlowWithAPIConnector",\
    "userFlowType": "signUpOrSignIn",\
    "userFlowTypeVersion": 1,\
    "apiConnectorConfiguration":{\
        "postFederationSignup":{\
            "@odata.id": "{apiConnectorId}"\
        },\
        "postAttributeCollection":{\
            "@odata.id": "{apiConnectorId}"\
        }\
    }\
}\
'

```