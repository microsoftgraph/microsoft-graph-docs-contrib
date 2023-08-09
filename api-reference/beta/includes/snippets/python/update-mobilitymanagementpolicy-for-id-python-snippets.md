---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = MobilityManagementPolicy()
request_body.@odata_type = '#microsoft.graph.mobilityManagementPolicy'

request_body.compliance_url = 'https://portal.mg.contoso.com/?portalAction=Compliance'

request_body.discovery_url = 'https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc'

request_body.terms_of_use_url = 'https://portal.mg.contoso.com/TermsofUse.aspx'




result = await client.policies.mobile_app_management_policies.by_mobile_app_management_policie_id('mobilityManagementPolicy-id').patch(request_body = request_body)


```