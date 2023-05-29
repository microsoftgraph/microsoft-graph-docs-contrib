---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecordGetPstnBlockedUsersLogCollectionPage getPstnBlockedUsersLog = graphClient.communications().callRecords()
	.getPstnBlockedUsersLog(CallRecordGetPstnBlockedUsersLogParameterSet
		.newBuilder()
		.withFromDateTime("2022-11-01")
		.withToDateTime("2022-12-01")
		.build())
	.buildRequest()
	.get();

```