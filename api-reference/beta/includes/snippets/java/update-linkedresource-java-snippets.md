---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

LinkedResource linkedResource = new LinkedResource();
linkedResource.setOdataType("#microsoft.graph.linkedResource");
linkedResource.setWebUrl("http://microsoft.com");
linkedResource.setApplicationName("Microsoft");
linkedResource.setDisplayName("Microsoft");
LinkedResource result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().byTodoTaskId("{todoTask-id}").linkedResources().byLinkedResourceId("{linkedResource-id}").patch(linkedResource);


```