---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.reports()
	.getMailboxUsageQuotaStatusMailboxCounts(ReportRootGetMailboxUsageQuotaStatusMailboxCountsParameterSet
		.newBuilder()
		.withPeriod("D7")
		.build())
	.buildRequest()
	.get();

```