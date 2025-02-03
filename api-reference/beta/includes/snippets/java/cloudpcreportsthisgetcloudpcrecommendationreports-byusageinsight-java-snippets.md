---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcrecommendationreports.GetCloudPcRecommendationReportsPostRequestBody getCloudPcRecommendationReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcrecommendationreports.GetCloudPcRecommendationReportsPostRequestBody();
getCloudPcRecommendationReportsPostRequestBody.setReportName(CloudPcReportName.CloudPcUsageCategoryReports);
LinkedList<String> select = new LinkedList<String>();
select.add("UsageInsight");
getCloudPcRecommendationReportsPostRequestBody.setSelect(select);
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("UsageInsight");
getCloudPcRecommendationReportsPostRequestBody.setGroupBy(groupBy);
getCloudPcRecommendationReportsPostRequestBody.setFilter("");
graphClient.deviceManagement().virtualEndpoint().reports().getCloudPcRecommendationReports().post(getCloudPcRecommendationReportsPostRequestBody);


```