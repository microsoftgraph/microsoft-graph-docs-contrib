---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.virtualendpoint.report.retrievecloudpcrecommendationreports.RetrieveCloudPcRecommendationReportsPostRequestBody retrieveCloudPcRecommendationReportsPostRequestBody = new com.microsoft.graph.devicemanagement.virtualendpoint.report.retrievecloudpcrecommendationreports.RetrieveCloudPcRecommendationReportsPostRequestBody();
retrieveCloudPcRecommendationReportsPostRequestBody.setReportType(CloudPcRecommendationReportType.CloudPcUsageCategoryReport);
LinkedList<String> select = new LinkedList<String>();
select.add("ServicePlanId");
select.add("ServicePlanName");
select.add("UsageInsight");
retrieveCloudPcRecommendationReportsPostRequestBody.setSelect(select);
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("ServicePlanId");
groupBy.add("ServicePlanName");
groupBy.add("UsageInsight");
retrieveCloudPcRecommendationReportsPostRequestBody.setGroupBy(groupBy);
graphClient.deviceManagement().virtualEndpoint().report().retrieveCloudPcRecommendationReports().post(retrieveCloudPcRecommendationReportsPostRequestBody);


```