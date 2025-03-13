---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.section_group import SectionGroup
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SectionGroup(
	display_name = "Section group name",
)

result = await graph_client.me.onenote.notebooks.by_notebook_id('notebook-id').section_groups.post(request_body)


```