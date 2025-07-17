---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identitygovernance.entitlementmanagement.accesspackages.item.get_applicable_policy_requirements.get_applicable_policy_requirements_post_request_body import GetApplicablePolicyRequirementsPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GetApplicablePolicyRequirementsPostRequestBody(
	additional_data = {
			"subject" : {
					"object_id" : "5acd375c-8acb-45de-a958-fa0dd89259ad",
			},
	}
)

result = await graph_client.identity_governance.entitlement_management.access_packages.by_access_package_id('accessPackage-id').get_applicable_policy_requirements.post(request_body)


```