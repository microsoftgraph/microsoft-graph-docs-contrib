---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.identitygovernance.entitlementmanagement.accesspackages.item.get_applicable_policy_requirements.get_applicable_policy_requirements_post_request_body import GetApplicablePolicyRequirementsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GetApplicablePolicyRequirementsPostRequestBody(
	additional_data = {
			"subject" : {
					"object_id" : "5acd375c-8acb-45de-a958-fa0dd89259ad",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').get_applicable_policy_requirements.post(request_body)


```