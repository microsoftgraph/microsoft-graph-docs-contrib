---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> requestIdsList = new LinkedList<String>();
requestIdsList.add("5a0c76d2-cb57-4ece-9bc1-c323178f116a");
requestIdsList.add("96609214-09ef-4f80-9d4a-ace5fceecaec");
requestIdsList.add("05020696-4eb8-45a3-918f-8f8bb7ad6015");

graphClient.auditLogs().signIns()
	.confirmSafe(SignInConfirmSafeParameterSet
		.newBuilder()
		.withRequestIds(requestIdsList)
		.build())
	.buildRequest()
	.post();

```