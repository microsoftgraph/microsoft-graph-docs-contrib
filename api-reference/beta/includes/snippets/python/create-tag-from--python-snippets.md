---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.ediscovery.tag import Tag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Tag(
	display_name = "Privileged",
	description = "The document is privileged",
	additional_data = {
			"parent@odata_bind" : "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3",
	}
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').tags.post(request_body)


```