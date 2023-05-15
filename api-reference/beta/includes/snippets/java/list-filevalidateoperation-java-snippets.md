---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LongRunningOperationCollectionPage operations = graphClient.external().industryData().operations()
	.buildRequest()
	.get();

```