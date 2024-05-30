---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdminTodo adminTodo = new AdminTodo();
adminTodo.setOdataType("#microsoft.graph.adminTodo");
TodoSettings settings = new TodoSettings();
settings.setOdataType("microsoft.graph.todoSettings");
settings.setIsPushNotificationEnabled(true);
settings.setIsExternalJoinEnabled(false);
settings.setIsExternalShareEnabled(true);
adminTodo.setSettings(settings);
AdminTodo result = graphClient.admin().todo().patch(adminTodo);


```