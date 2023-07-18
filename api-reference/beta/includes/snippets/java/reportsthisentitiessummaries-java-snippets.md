---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportsEntitiesSummariesCollectionPage entitiesSummaries = graphClient.networkAccess().reports()
	.entitiesSummaries(ReportsEntitiesSummariesParameterSet
		.newBuilder()
		.withStartDateTime(2023-01-01T00:00:00Z)
		.withEndDateTime(2023-01-31T00:00:00Z)
		.build())
	.buildRequest()
	.filter("trafficType  eq 'microsoft365'")
	.get();

```