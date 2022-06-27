---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TaskList baseTaskList = new TaskList();
baseTaskList.displayName = "Shopping list";

graphClient.me().tasks().lists()
	.buildRequest()
	.post(baseTaskList);

```