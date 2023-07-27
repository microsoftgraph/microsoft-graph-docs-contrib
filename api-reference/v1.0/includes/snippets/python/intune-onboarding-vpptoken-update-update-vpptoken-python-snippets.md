---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = VppToken()
request_body.@odata_type = '#microsoft.graph.vppToken'

request_body.organization_name = 'Organization Name value'

request_body.vpptokenaccounttype(VppTokenAccountType.Education('vpptokenaccounttype.education'))

request_body.apple_id = 'Apple Id value'

request_body.expirationDateTime = DateTime('2016-12-31T23:57:57.2481234-08:00')

request_body.lastSyncDateTime = DateTime('2017-01-01T00:02:49.3205976-08:00')

request_body.token = 'Token value'

request_body.state(VppTokenState.Valid('vpptokenstate.valid'))

request_body.lastsyncstatus(VppTokenSyncStatus.InProgress('vpptokensyncstatus.inprogress'))

request_body.automatically_update_apps = True

request_body.country_or_region = 'Country Or Region value'




result = await client.device_app_management.vpp_tokens.by_vpp_token_id('vppToken-id').patch(request_body = request_body)


```