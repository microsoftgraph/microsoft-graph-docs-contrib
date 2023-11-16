---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = MobilityManagementPolicy(
	odata_type = "#microsoft.graph.mobilityManagementPolicy",
	compliance_url = "https://portal.uem.contoso.com/?portalAction=Compliance",
	discovery_url = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc",
	terms_of_use_url = "https://portal.uem.contoso.com/TermsofUse.aspx",
)

result = await graph_client.policies.mobile_device_management_policies.by_mobility_management_policy_id('mobilityManagementPolicy-id').patch(request_body)


```