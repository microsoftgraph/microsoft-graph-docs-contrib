---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> userIdsList = new LinkedList<String>();
userIdsList.add("4628e7df-dff3-407c-a08f-75f08c0806dc");

graphClient.identityProtection().riskyUsers()
	.dismiss(RiskyUserDismissParameterSet
		.newBuilder()
		.withUserIds(userIdsList)
		.build())
	.buildRequest()
	.post();

```