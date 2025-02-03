---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LinkedResource linkedResource = new LinkedResource();
linkedResource.setWebUrl("https://microsoft.com");
linkedResource.setApplicationName("Microsoft");
linkedResource.setDisplayName("Microsoft");
linkedResource.setExternalId("dk9cddce2-dce2-f9dd-e2dc-cdf9e2dccdf9");
LinkedResource result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().byTodoTaskId("{todoTask-id}").linkedResources().post(linkedResource);


```