---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecordGetSmsLogCollectionPage getSmsLog = graphClient.communications().callRecords()
	.getSmsLog(CallRecordGetSmsLogParameterSet
		.newBuilder()
		.withFromDateTime("2022-11-01")
		.withToDateTime("2022-12-01")
		.build())
	.buildRequest()
	.get();

```