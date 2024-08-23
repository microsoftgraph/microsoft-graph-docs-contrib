---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.groups.delta.DeltaRequestBuilder deltaRequestBuilder = new com.microsoft.graph.groups.delta.DeltaRequestBuilder("https://graph.microsoft.com/v1.0/groups/delta?$skiptoken=pqwSUjGYvb3jQpbwVAwEL7yuI3dU1LecfkkfLPtnIjvB7XnF_yllFsCrZJ", graphClient.getRequestAdapter());
com.microsoft.graph.groups.delta.DeltaGetResponse result = deltaRequestBuilder.get();


```