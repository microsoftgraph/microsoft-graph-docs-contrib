---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity identity-providers create --body '{\
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",\
    "displayName": "Login with the Contoso identity provider",\
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",\
    "clientSecret": "12345",\
    "claimsMapping": {\
        "userId": "myUserId",\
        "givenName": "myGivenName",\
        "surname": "mySurname",\
        "email": "myEmail",\
        "displayName": "myDisplayName"\
    },\
    "domainHint": "mycustomoidc",\
    "metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",\
    "responseMode": "form_post",\
    "responseType": "code",\
    "scope": "openid"\
}\
\
'

```