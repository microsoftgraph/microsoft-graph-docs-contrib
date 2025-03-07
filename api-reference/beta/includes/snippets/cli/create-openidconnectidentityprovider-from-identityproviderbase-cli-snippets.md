---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity identity-providers create --body '{\
  "@odata.type": "microsoft.graph.openIdConnectIdentityProvider",\
    "displayName": "Contoso",\
    "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",\
    "clientSecret": "4294967296",\
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