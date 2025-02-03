---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.search.query.QueryPostRequestBody queryPostRequestBody = new com.microsoft.graph.search.query.QueryPostRequestBody();
LinkedList<SearchRequest> requests = new LinkedList<SearchRequest>();
SearchRequest searchRequest = new SearchRequest();
LinkedList<EntityType> entityTypes = new LinkedList<EntityType>();
entityTypes.add(EntityType.ChatMessage);
searchRequest.setEntityTypes(entityTypes);
SearchQuery query = new SearchQuery();
query.setQueryString("test");
searchRequest.setQuery(query);
searchRequest.setFrom(0);
searchRequest.setSize(15);
searchRequest.setEnableTopResults(true);
requests.add(searchRequest);
queryPostRequestBody.setRequests(requests);
var result = graphClient.search().query().post(queryPostRequestBody);


```