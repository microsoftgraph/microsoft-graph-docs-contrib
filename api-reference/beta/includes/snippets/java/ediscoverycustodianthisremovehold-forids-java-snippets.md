---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> idsList = new LinkedList<String>();
idsList.add("7f697316-43ed-48e1-977f-261be050db93");
idsList.add("b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8");

graphClient.security().cases().ediscoveryCases("b0073e4e-4184-41c6-9eb7-8c8cc3e2288b").custodians()
	.removeHold(EdiscoveryCustodianRemoveHoldParameterSet
		.newBuilder()
		.withIds(idsList)
		.build())
	.buildRequest()
	.post();

```