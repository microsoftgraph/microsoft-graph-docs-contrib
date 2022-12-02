---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ";

String search = "abc0907";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("EventDateTime");
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("UsageInHour");
selectList.add("RoundTripTimeInMsP50");
selectList.add("AvailableBandwidthInMBpsP50");
selectList.add("RemoteSignInTimeInSecP50");
selectList.add("UserPrincipalName");

int skip = 0;

int top = 25;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getDailyAggregatedRemoteConnectionReports(CloudPcReportsGetDailyAggregatedRemoteConnectionReportsParameterSet
		.newBuilder()
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(search)
		.withGroupBy(null)
		.withOrderBy(null)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```