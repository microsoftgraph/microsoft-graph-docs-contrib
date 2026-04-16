---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mobile_device_management_policy import MobileDeviceManagementPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MobileDeviceManagementPolicy(
	odata_type = "#microsoft.graph.mobileDeviceManagementPolicy",
	compliance_url = "https://portal.uem.contoso.com/?portalAction=Compliance",
	discovery_url = "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc",
	terms_of_use_url = "https://portal.uem.contoso.com/TermsofUse.aspx",
)

result = await graph_client.policies.mobile_device_management_policies.by_mobile_device_management_policy_id('mobileDeviceManagementPolicy-id').patch(request_body)


```