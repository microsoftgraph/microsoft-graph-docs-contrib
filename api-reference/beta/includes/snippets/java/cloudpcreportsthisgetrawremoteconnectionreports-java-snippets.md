---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("RoundTripTimeInMs");
selectList.add("AvailableBandwidthInMBps");
selectList.add("SignInDateTime");

int skip = 0;

int top = 50;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getRawRemoteConnectionReports(CloudPcReportsGetRawRemoteConnectionReportsParameterSet
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