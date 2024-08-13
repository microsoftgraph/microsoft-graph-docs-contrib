---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.domain import Domain

graph_client = GraphServiceClient(credentials, scopes)

request_body = Domain(
	is_default = True,
	supported_services = [
		"Email",
		"OfficeCommunicationsOnline",
		"CustomUrlDomain",
	],
)

result = await graph_client.domains.by_domain_id('domain-id').patch(request_body)


```