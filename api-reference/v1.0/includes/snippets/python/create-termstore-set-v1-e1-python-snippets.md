---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.term_store.set import Set
from msgraph.generated.models.term_store.group import Group
from msgraph.generated.models.term_store.localized_name import LocalizedName
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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