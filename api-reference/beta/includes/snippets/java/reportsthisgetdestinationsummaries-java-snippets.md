---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportsGetDestinationSummariesCollectionPage getDestinationSummaries = graphClient.networkAccess().reports()
	.getDestinationSummaries(ReportsGetDestinationSummariesParameterSet
		.newBuilder()
		.withAggregatedBy('devices')
		.withStartDateTime(2023-01-01T00:00:00Z)
		.withEndDateTime(2023-01-31T00:00:00Z)
		.build())
	.buildRequest()
	.get();

```