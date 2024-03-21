---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.checkmemberobjects.CheckMemberObjectsPostRequestBody checkMemberObjectsPostRequestBody = new com.microsoft.graph.users.item.checkmemberobjects.CheckMemberObjectsPostRequestBody();
LinkedList<String> ids = new LinkedList<String>();
ids.add("80a963dd-84af-4eb8-b2a6-781e444d4fb0");
ids.add("62e90394-69f5-4237-9190-012177145e10");
ids.add("86a64f51-3a64-4cc6-a8c8-6b8f000c0f52");
ids.add("ac38546e-ddf3-437a-ac5c-27a94cd7a0f1");
checkMemberObjectsPostRequestBody.setIds(ids);
var result = graphClient.me().checkMemberObjects().post(checkMemberObjectsPostRequestBody);


```