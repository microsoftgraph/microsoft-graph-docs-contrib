---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServiceActivityGetMetricsForConditionalAccessManagedDevicesSignInSuccessCollectionPage getMetricsForConditionalAccessManagedDevicesSignInSuccess = graphClient.reports().serviceActivity()
	.getMetricsForConditionalAccessManagedDevicesSignInSuccess(ServiceActivityGetMetricsForConditionalAccessManagedDevicesSignInSuccessParameterSet
		.newBuilder()
		.withInclusiveIntervalStartDateTime(2023-01-01T00:00:00Z)
		.withExclusiveIntervalEndDateTime(2023-01-01T00:20:00Z)
		.withAggregationIntervalInMinutes(10)
		.build())
	.buildRequest()
	.get();

```