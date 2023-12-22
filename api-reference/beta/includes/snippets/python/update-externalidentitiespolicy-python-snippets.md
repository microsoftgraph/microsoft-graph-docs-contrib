---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalIdentitiesPolicy(
	allow_external_identities_to_leave = False,
)

result = await graph_client.policies.external_identities_policy.patch(request_body)


```