---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.onenote_section import OnenoteSection
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OnenoteSection(
	display_name = "Section name",
)

result = await graph_client.me.onenote.section_groups.by_section_group_id('sectionGroup-id').sections.post(request_body)


```