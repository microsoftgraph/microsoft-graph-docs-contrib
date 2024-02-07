---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcReportName reportName = CloudPcReportName.CLOUD_PC_USAGE_CATEGORY_REPORTS;

LinkedList<String> selectList = new LinkedList<String>();
selectList.add("UsageInsight");

LinkedList<String> groupByList = new LinkedList<String>();
groupByList.add("UsageInsight");

String filter = "";

graphClient.deviceManagement().virtualEndpoint().reports()
	.getCloudPcRecommendationReports(CloudPcReportsGetCloudPcRecommendationReportsParameterSet
		.newBuilder()
		.withReportName(reportName)
		.withFilter(filter)
		.withSelect(selectList)
		.withSearch(null)
		.withGroupBy(groupByList)
		.withOrderBy(null)
		.withSkip(null)
		.withTop(null)
		.build())
	.buildRequest()
	.post();

```