---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChecklistItem checklistItem = new ChecklistItem();
checklistItem.setDisplayName("Final sign-off from the team");
ChecklistItem result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().byTodoTaskId("{todoTask-id}").checklistItems().post(checklistItem);


```