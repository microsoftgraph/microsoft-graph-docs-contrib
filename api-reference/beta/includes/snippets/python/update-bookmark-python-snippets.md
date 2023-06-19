---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Bookmark()
request_body.description = 'Book a fancy vacation in Tuscany or browse museums in Florence.'




result = await client.search.bookmarks.by_bookmark_id('bookmark-id').patch(request_body = request_body)


```