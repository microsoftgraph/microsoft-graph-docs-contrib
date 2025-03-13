---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.authority_template import AuthorityTemplate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AuthorityTemplate(
	odata_type = "#microsoft.graph.security.authorityTemplate",
	display_name = "Business",
)

result = await graph_client.security.labels.authorities.post(request_body)


```