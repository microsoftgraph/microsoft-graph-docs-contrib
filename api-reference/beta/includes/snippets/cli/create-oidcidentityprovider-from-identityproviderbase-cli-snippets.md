---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity identity-providers create --body '{\
  "@odata.type": "#microsoft.graph.OidcIdentityProvider",\
  "displayName": "Contoso AAD B2C",\
  "clientId": "00001111-aaaa-2222-bbbb-3333cccc4444",\
  "issuer": "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/",\
  "wellKnownEndpoint": "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",\
  "responseType": "code",\
  "scope": "openid profile email offline_access",\
  "clientAuthentication": {\
    "@odata.type": "#microsoft.graph.oidcClientSecretAuthentication",\
    "clientSecret": "4294967296"\
  },\
  "inboundClaimMapping": {\
    "sub": "sub",\
    "name": "name",\
    "given_name": "given_name",\
    "family_name": "family_name",\
    "email": "email",\
    "email_verified": "email_verified",\
    "phone_number": "phone_number",\
    "phone_number_verified": "phone_number_verified",\
    "address": {\
      "street_address": "street_address",\
      "locality": "locality",\
      "region": "region",\
      "postal_code": "postal_code",\
      "country": "country"\
    }\
  }\
}\
'

```