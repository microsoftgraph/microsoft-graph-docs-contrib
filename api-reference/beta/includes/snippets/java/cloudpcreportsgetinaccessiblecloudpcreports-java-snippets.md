---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String filter = "region eq 'westus2'";

LinkedList<String> orderByList = new LinkedList<String>();
orderByList.add("cloudPcId");

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("cloudPcId");
selectList.add("aadDeviceId");
selectList.add("cloudPcName");
selectList.add("userPrincipalName");
selectList.add("provisioningStatus");
selectList.add("region");
selectList.add("deviceHealthStatus");
selectList.add("deviceHealthStatusDateTime");
selectList.add("recentDeviceHealthFailureCount");
selectList.add("recentConnectionFailureCount");
selectList.add("systemStatus");
selectList.add("systemStatusDateTime");

int top = 10;

int skip = 0;

graphClient.deviceManagement().virtualEndpoint().reports()
	.getInaccessibleCloudPcReports(CloudPcReportsGetInaccessibleCloudPcReportsParameterSet
		.newBuilder()
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(null)
		.withGroupBy(null)
		.withOrderBy(orderByList)
		.withSkip(skip)
		.withTop(top)
		.build())
	.buildRequest()
	.post();

```