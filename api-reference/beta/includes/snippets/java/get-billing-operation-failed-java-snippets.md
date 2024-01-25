---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Operation operation = graphClient.reports().partners().billing().operations("6fe687d7-1e0f-4bd6-9091-4672691f64bc")
	.buildRequest()
	.get();

```