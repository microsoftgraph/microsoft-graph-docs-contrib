---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> requestIdsList = new LinkedList<String>();
requestIdsList.add("f01c6af6-6683-4a37-a945-0a925501eede");
requestIdsList.add("42bf60ac-d0cb-4206-aa5c-101884298f55");
requestIdsList.add("f09c8f14-8d8e-42cf-8a7e-732b0594e79b");

graphClient.auditLogs().signIns()
	.confirmCompromised(SignInConfirmCompromisedParameterSet
		.newBuilder()
		.withRequestIds(requestIdsList)
		.build())
	.buildRequest()
	.post();

```