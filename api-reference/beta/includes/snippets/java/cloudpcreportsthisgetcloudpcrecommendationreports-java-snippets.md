---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcrecommendationreports.GetCloudPcRecommendationReportsPostRequestBody getCloudPcRecommendationReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcrecommendationreports.GetCloudPcRecommendationReportsPostRequestBody();
getCloudPcRecommendationReportsPostRequestBody.setReportName(CloudPcReportName.CloudPcUsageCategoryReports);
getCloudPcRecommendationReportsPostRequestBody.setTop(50);
getCloudPcRecommendationReportsPostRequestBody.setSkip(0);
getCloudPcRecommendationReportsPostRequestBody.setSearch("");
getCloudPcRecommendationReportsPostRequestBody.setFilter("");
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UserPrincipalName");
select.add("UsageInsight");
select.add("CurrentSize");
select.add("RecommendedSize");
select.add("UsageInHour");
select.add("DevicePerfSummary");
getCloudPcRecommendationReportsPostRequestBody.setSelect(select);
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("ManagedDeviceName");
getCloudPcRecommendationReportsPostRequestBody.setOrderBy(orderBy);
graphClient.deviceManagement().virtualEndpoint().reports().getCloudPcRecommendationReports().post(getCloudPcRecommendationReportsPostRequestBody);


```