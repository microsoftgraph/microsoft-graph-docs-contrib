---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.tag import Tag

graph_client = GraphServiceClient(credentials, scopes)

request_body = Tag(
	display_name = "Privileged",
	description = "The document is privileged",
	additional_data = {
			"parent@odata_bind" : "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3",
	}
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').tags.post(request_body)


```