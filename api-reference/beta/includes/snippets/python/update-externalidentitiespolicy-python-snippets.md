---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalIdentitiesPolicy(
	allow_external_identities_to_leave = False,
)

result = await graph_client.policies.external_identities_policy.patch(request_body)


```