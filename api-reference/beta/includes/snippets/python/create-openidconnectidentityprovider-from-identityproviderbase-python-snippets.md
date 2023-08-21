---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = OpenIdConnectIdentityProvider()
request_body.@odata_type = 'microsoft.graph.openIdConnectIdentityProvider'

request_body.display_name = 'Login with the Contoso identity provider'

request_body.client_id = '56433757-cadd-4135-8431-2c9e3fd68ae8'

request_body.client_secret = '12345'

claims_mapping = ClaimsMapping()
claims_mapping.user_id = 'myUserId'

claims_mapping.given_name = 'myGivenName'

claims_mapping.surname = 'mySurname'

claims_mapping.email = 'myEmail'

claims_mapping.display_name = 'myDisplayName'


request_body.claims_mapping = claims_mapping
request_body.domain_hint = 'mycustomoidc'

request_body.metadata_url = 'https://mycustomoidc.com/.well-known/openid-configuration'

request_body.responsemode(OpenIdConnectResponseMode.Form('post'))

request_body.responsetype(OpenIdConnectResponseTypes.Code('openidconnectresponsetypes.code'))

request_body.scope = 'openid'




result = await client.identity.identity_providers.post(request_body = request_body)


```