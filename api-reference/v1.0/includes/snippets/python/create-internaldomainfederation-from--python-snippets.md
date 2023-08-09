---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = InternalDomainFederation()
request_body.@odata_type = '#microsoft.graph.internalDomainFederation'

request_body.display_name = 'Contoso'

request_body.issuer_uri = 'http://contoso.com/adfs/services/trust'

request_body.metadata_exchange_uri = 'https://sts.contoso.com/adfs/services/trust/mex'

request_body.signing_certificate = 'MIIE3jCCAsagAwIBAgIQQcyDaZz3MI'

request_body.passive_sign_in_uri = 'https://sts.contoso.com/adfs/ls'

request_body.preferredauthenticationprotocol(AuthenticationProtocol.WsFed('authenticationprotocol.wsfed'))

request_body.active_sign_in_uri = 'https://sts.contoso.com/adfs/services/trust/2005/usernamemixed'

request_body.sign_out_uri = 'https://sts.contoso.com/adfs/ls'

request_body.promptloginbehavior(PromptLoginBehavior.NativeSupport('promptloginbehavior.nativesupport'))

request_body.is_signed_authentication_request_required = True

request_body.next_signing_certificate = 'MIIE3jCCAsagAwIBAgIQQcyDaZz3MI'

request_body.federatedidpmfabehavior(FederatedIdpMfaBehavior.RejectMfaByFederatedIdp('federatedidpmfabehavior.rejectmfabyfederatedidp'))




result = await client.domains.by_domain_id('domain-id').federation_configuration.post(request_body = request_body)


```