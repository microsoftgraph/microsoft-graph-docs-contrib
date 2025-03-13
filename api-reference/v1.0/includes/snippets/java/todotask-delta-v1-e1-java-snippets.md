---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.todo.lists.item.tasks.delta.DeltaRequestBuilder deltaRequestBuilder = new com.microsoft.graph.users.item.todo.lists.item.tasks.delta.DeltaRequestBuilder("https://graph.microsoft.com/v1.0/me/todo/lists/gDbc8U7HGwADDZocJgAAAA==/tasks/delta?$deltatoken=w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM", graphClient.getRequestAdapter());
com.microsoft.graph.users.item.todo.lists.item.tasks.delta.DeltaGetResponse result = deltaRequestBuilder.get();


```