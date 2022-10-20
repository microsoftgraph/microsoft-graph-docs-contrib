---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("39333641443238353535383731453339");
idsList.add("46333131344239353834433430454335");

graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").noncustodialDataSources()
	.applyHold(EdiscoveryNoncustodialDataSourceApplyHoldParameterSet
		.newBuilder()
		.withIds(idsList)
		.build())
	.buildRequest()
	.post();

```