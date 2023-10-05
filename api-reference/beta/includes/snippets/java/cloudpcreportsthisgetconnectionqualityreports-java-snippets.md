---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'";

String search = "";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("AvgRoundTripTimeInMsP50");
selectList.add("LastConnectionRoundTripTimeInMs");
selectList.add("AvgAvailableBandwidthInMBpsP50");
selectList.add("LastConnectionAvailableBandWidthInMSps");
selectList.add("AvgRemoteSignInTimeInSecP50");
selectList.add("UDPConnectionPercentage");
selectList.add("LastConnectionGateway");
selectList.add("LastConnectionProtocol");
selectList.add("EventDateTime");

int skip = 0;

int top = 25;

LinkedList<String> orderByList = new LinkedList<String>();

graphClient.deviceManagement().virtualEndpoint().reports()
	.getConnectionQualityReports(CloudPcReportsGetConnectionQualityReportsParameterSet
		.newBuilder()
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(search)
		.withGroupBy(null)
		.withOrderBy(orderByList)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```