---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TodoTask todoTask = new TodoTask();
todoTask.setTitle("A new task");
LinkedList<String> categories = new LinkedList<String>();
categories.add("Important");
todoTask.setCategories(categories);
LinkedList<LinkedResource> linkedResources = new LinkedList<LinkedResource>();
LinkedResource linkedResource = new LinkedResource();
linkedResource.setWebUrl("http://microsoft.com");
linkedResource.setApplicationName("Microsoft");
linkedResource.setDisplayName("Microsoft");
linkedResources.add(linkedResource);
todoTask.setLinkedResources(linkedResources);
TodoTask result = graphClient.me().todo().lists().byTodoTaskListId("{todoTaskList-id}").tasks().post(todoTask);


```