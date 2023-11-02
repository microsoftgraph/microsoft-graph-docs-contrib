---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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