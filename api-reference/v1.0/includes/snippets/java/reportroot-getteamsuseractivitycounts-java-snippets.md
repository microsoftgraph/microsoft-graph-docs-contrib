---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.reports()
	.getTeamsUserActivityCounts(ReportRootGetTeamsUserActivityCountsParameterSet
		.newBuilder()
		.withPeriod("D7")
		.build())
	.buildRequest()
	.get();

```