---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RemoteAssistancePartner()
request_body.@odata_type = '#microsoft.graph.remoteAssistancePartner'

request_body.display_name = 'Display Name value'

request_body.onboarding_url = 'https://example.com/onboardingUrl/'

request_body.onboardingstatus(RemoteAssistanceOnboardingStatus.Onboarding('remoteassistanceonboardingstatus.onboarding'))

request_body.lastConnectionDateTime = DateTime('2016-12-31T23:58:36.6670033-08:00')




result = await client.device_management.remote_assistance_partners.post(request_body = request_body)


```