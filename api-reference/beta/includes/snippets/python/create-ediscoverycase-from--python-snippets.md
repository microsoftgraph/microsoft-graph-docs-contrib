---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_case import EdiscoveryCase
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryCase(
	display_name = "CONTOSO LITIGATION-005",
	description = "Project Bazooka",
	external_id = "324516",
)

result = await graph_client.security.cases.ediscovery_cases.post(request_body)


```