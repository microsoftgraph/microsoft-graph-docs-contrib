---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.set import Set
from msgraph.generated.models.group import Group
from msgraph.generated.models.localized_name import LocalizedName

graph_client = GraphServiceClient(credentials, scopes)

request_body = Set(
	odata_type = "#microsoft.graph.termStore.set",
	parent_group = Group(
		id = "fc733b51-10f1-40fd-b784-dc6d1e42804b",
	),
	localized_names = [
		LocalizedName(
			language_tag = "en-US",
			name = "Department",
		),
	],
)

result = await graph_client.sites.by_site_id('site-id').term_store.sets.post(request_body)


```