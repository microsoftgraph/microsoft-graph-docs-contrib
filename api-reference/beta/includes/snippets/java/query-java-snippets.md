---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.search.query.QueryPostRequestBody queryPostRequestBody = new com.microsoft.graph.beta.search.query.QueryPostRequestBody();
LinkedList<SearchRequest> requests = new LinkedList<SearchRequest>();
SearchRequest searchRequest = new SearchRequest();
LinkedList<EntityType> entityTypes = new LinkedList<EntityType>();
entityTypes.add(EntityType.ExternalItem);
searchRequest.setEntityTypes(entityTypes);
LinkedList<String> contentSources = new LinkedList<String>();
contentSources.add("/external/connections/connectionfriendlyname");
searchRequest.setContentSources(contentSources);
searchRequest.setRegion("US");
SearchQuery query = new SearchQuery();
query.setQueryString("contoso product");
searchRequest.setQuery(query);
searchRequest.setFrom(0);
searchRequest.setSize(25);
LinkedList<String> fields = new LinkedList<String>();
fields.add("title");
fields.add("description");
searchRequest.setFields(fields);
requests.add(searchRequest);
queryPostRequestBody.setRequests(requests);
var result = graphClient.search().query().post(queryPostRequestBody);


```