---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.contact_merge_suggestions import ContactMergeSuggestions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ContactMergeSuggestions(
	is_enabled = False,
)

result = await graph_client.me.settings.contact_merge_suggestions.patch(request_body)


```