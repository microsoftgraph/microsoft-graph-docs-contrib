---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Domain(
	is_default = True,
	supported_services = [
		"Email",
		"OfficeCommunicationsOnline",
	],
)

result = await graph_client.domains.by_domain_id('domain-id').patch(request_body)


```