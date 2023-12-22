---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity custom-authentication-extensions patch --custom-authentication-extension-id {customAuthenticationExtension-id} --body '{\
    "@odata.type": "#microsoft.graph.onTokenIssuanceStartCustomExtension",\
    "displayName": "onTokenIssuanceStartCustomExtension",\
    "description": "Fetch additional claims from custom user store",\
    "endpointConfiguration": {\
        "@odata.type": "#microsoft.graph.httpRequestEndpoint",\
        "targetUrl": "https://authenticationeventsAPI.contoso.com"\
    },\
    "authenticationConfiguration": {\
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication",\
        "resourceId": "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4"\
    },\
    "claimsForTokenConfiguration": [\
        {\
            "claimIdInApiResponse": "DateOfBirth"\
        },\
        {\
            "claimIdInApiResponse": "CustomRoles"\
        }\
    ]\
}\
'

```