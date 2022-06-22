---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RichLongRunningOperationCollectionPage operations = graphClient.sites("root").operations()
	.buildRequest()
	.get();

```