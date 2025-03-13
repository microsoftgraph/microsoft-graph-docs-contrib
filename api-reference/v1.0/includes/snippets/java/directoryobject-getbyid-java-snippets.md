---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.directoryobjects.getbyids.GetByIdsPostRequestBody getByIdsPostRequestBody = new com.microsoft.graph.directoryobjects.getbyids.GetByIdsPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("84b80893-8749-40a3-97b7-68513b600544");
ids.add("5d6059b6-368d-45f8-91e1-8e07d485f1d0");
ids.add("0b944de3-e0fc-4774-a49a-b135213725ef");
ids.add("b75a5ab2-fe55-4463-bd31-d21ad555c6e0");
getByIdsPostRequestBody.setIds(ids);
LinkedList<String> types = new LinkedList<String>();
types.add("user");
types.add("group");
types.add("device");
getByIdsPostRequestBody.setTypes(types);
var result = graphClient.directoryObjects().getByIds().post(getByIdsPostRequestBody);


```