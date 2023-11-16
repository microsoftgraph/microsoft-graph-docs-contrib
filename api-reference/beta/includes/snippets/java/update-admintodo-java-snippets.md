---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminTodo adminTodo = new AdminTodo();
TodoSettings settings = new TodoSettings();
settings.isPushNotificationEnabled = true;
settings.isExternalJoinEnabled = false;
settings.isExternalShareEnabled = true;
adminTodo.settings = settings;

graphClient.admin().todo()
	.buildRequest()
	.patch(adminTodo);

```