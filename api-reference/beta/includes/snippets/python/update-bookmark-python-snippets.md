---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.search.bookmark import Bookmark
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Bookmark(
	description = "Book a fancy vacation in Tuscany or browse museums in Florence.",
)

result = await graph_client.search.bookmarks.by_bookmark_id('bookmark-id').patch(request_body)


```