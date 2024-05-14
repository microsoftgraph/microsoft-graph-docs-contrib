---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.citation_template import CitationTemplate

graph_client = GraphServiceClient(credentials, scopes)

request_body = CitationTemplate(
	odata_type = "#microsoft.graph.security.citationTemplate",
	display_name = "Contoso Company Policy",
	citation_url = "www.citationUrl.com",
	citation_jurisdiction = "Contoso",
)

result = await graph_client.security.labels.citations.post(request_body)


```