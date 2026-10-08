---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.mobility_management_policy import MobilityManagementPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MobilityManagementPolicy(
	odata_type = "#microsoft.graph.mobilityManagementPolicy",
	compliance_url = "https://portal.mg.contoso.com/?portalAction=Compliance",
	discovery_url = "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc",
	terms_of_use_url = "https://portal.mg.contoso.com/TermsofUse.aspx",
)

result = await graph_client.policies.mobile_app_management_policies.by_mobile_app_management_policy_id('mobileAppManagementPolicy-id').patch(request_body)


```