---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BaseTaskList baseTaskList = new BaseTaskList();
baseTaskList.displayName = "Travel Plan";

graphClient.me().tasks().lists("AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFs")
	.buildRequest()
	.patch(baseTaskList);

```