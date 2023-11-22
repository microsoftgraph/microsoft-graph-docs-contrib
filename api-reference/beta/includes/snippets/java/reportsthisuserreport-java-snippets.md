---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportsUserReportCollectionPage userReport = graphClient.networkaccess().reports()
	.userReport(ReportsUserReportParameterSet
		.newBuilder()
		.withStartDateTime(2023-08-20T12:12:59.076Z)
		.withEndDateTime(2023-08-21T12:12:59.076Z)
		.build())
	.buildRequest()
	.get();

```