---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceOperation resourceOperation = graphClient.deviceManagement().resourceOperations("{resourceOperationId}")
	.buildRequest()
	.get();

```