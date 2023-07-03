---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ResourceOperationCollectionPage resourceOperations = graphClient.deviceManagement().resourceOperations()
	.buildRequest()
	.get();

```