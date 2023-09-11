---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("SignInDateTime");
selectList.add("SignOutDateTime");
selectList.add("UsageInHour");
selectList.add("RoundTripTimeInMsP50");
selectList.add("AvailableBandwidthInMBpsP50");
selectList.add("RemoteSignInTimeInSec");

int top = 25;

int skip = 0;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getRemoteConnectionHistoricalReports(CloudPcReportsGetRemoteConnectionHistoricalReportsParameterSet
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