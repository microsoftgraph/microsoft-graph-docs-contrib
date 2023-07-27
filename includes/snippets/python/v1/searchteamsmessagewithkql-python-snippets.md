---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = QueryPostRequestBody()
requests_search_request1 = SearchRequest()
requests_search_request1.EntityTypes([requests_search_request1.entitytype(EntityType.ChatMessage('entitytype.chatmessage'))
])

requests_search_request1query = SearchQuery()
requests_search_request1query.query_string = 'contoso from:bob to:alice sent>2022-07-14'


requests_search_request1.query = requests_search_request1query
requests_search_request1.From = 0

requests_search_request1.Size = 15

requests_search_request1.enable_top_results = True


requestsArray []= requestsSearchRequest1;
request_body.requests(requestsArray)





result = await client.search.query.post(request_body = request_body)


```