---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.citation_template import CitationTemplate
from msgraph.generated.models.identity_set import IdentitySet

graph_client = GraphServiceClient(credentials, scopes)

request_body = CitationTemplate(
	odata_type = "#microsoft.graph.security.citationTemplate",
	display_name = "String",
	created_by = IdentitySet(
		odata_type = "microsoft.graph.identitySet",
	),
	citation_url = "String",
	citation_jurisdiction = "String",
)

result = await graph_client.security.labels.citations.post(request_body)


```