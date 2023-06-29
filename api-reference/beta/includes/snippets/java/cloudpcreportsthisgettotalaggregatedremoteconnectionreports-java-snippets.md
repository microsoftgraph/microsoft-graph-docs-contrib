---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

int top = 25;

int skip = 0;

String filter = "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("UserPrincipalName");
selectList.add("TotalUsageInHour");
selectList.add("DaysSinceLastSignIn");

graphClient.deviceManagement().virtualEndpoint().reports()
	.getTotalAggregatedRemoteConnectionReports(CloudPcReportsGetTotalAggregatedRemoteConnectionReportsParameterSet
		.newBuilder()
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(null)
		.withGroupBy(null)
		.withOrderBy(null)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```