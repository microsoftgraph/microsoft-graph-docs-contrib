---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcReportName reportName = CloudPcReportName.CLOUD_PC_USAGE_CATEGORY_REPORTS;

int top = 50;

int skip = 0;

String search = "";

String filter = "";

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("UserPrincipalName");
selectList.add("UsageInsight");
selectList.add("CurrentSize");
selectList.add("RecommendedSize");
selectList.add("UsageInHour");
selectList.add("DevicePerfSummary");

LinkedList<String> orderByList = new LinkedList<String>();
orderByList.add("ManagedDeviceName");

graphClient.deviceManagement().virtualEndpoint().reports()
	.getCloudPcRecommendationReports(CloudPcReportsGetCloudPcRecommendationReportsParameterSet
		.newBuilder()
		.withReportName(reportName)
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