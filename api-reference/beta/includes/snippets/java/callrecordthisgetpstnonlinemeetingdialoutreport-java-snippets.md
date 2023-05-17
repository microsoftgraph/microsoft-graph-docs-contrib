---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CallRecordGetPstnOnlineMeetingDialoutReportCollectionPage getPstnOnlineMeetingDialoutReport = graphClient.communications().callRecords()
	.getPstnOnlineMeetingDialoutReport(CallRecordGetPstnOnlineMeetingDialoutReportParameterSet
		.newBuilder()
		.withFromDateTime("2022-11-01")
		.withToDateTime("2022-12-01")
		.build())
	.buildRequest()
	.get();

```