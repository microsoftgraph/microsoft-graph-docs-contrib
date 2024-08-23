---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.getmemberobjects.GetMemberObjectsPostRequestBody getMemberObjectsPostRequestBody = new com.microsoft.graph.beta.users.item.getmemberobjects.GetMemberObjectsPostRequestBody();
getMemberObjectsPostRequestBody.setSecurityEnabledOnly(true);
var result = graphClient.me().getMemberObjects().post(getMemberObjectsPostRequestBody);


```