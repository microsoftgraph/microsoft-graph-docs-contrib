---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.virtualendpoint.report.retrievecloudpcrecommendationreports.RetrieveCloudPcRecommendationReportsPostRequestBody retrieveCloudPcRecommendationReportsPostRequestBody = new com.microsoft.graph.devicemanagement.virtualendpoint.report.retrievecloudpcrecommendationreports.RetrieveCloudPcRecommendationReportsPostRequestBody();
retrieveCloudPcRecommendationReportsPostRequestBody.setReportType(CloudPcRecommendationReportType.CloudPcUsageCategoryReport);
retrieveCloudPcRecommendationReportsPostRequestBody.setFilter("");
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UserPrincipalName");
select.add("ServicePlanId");
select.add("ServicePlanName");
select.add("UsageInsight");
select.add("RecommendedPlanId");
select.add("RecommendedPlanName");
retrieveCloudPcRecommendationReportsPostRequestBody.setSelect(select);
retrieveCloudPcRecommendationReportsPostRequestBody.setSearch("");
retrieveCloudPcRecommendationReportsPostRequestBody.setSkip(0);
retrieveCloudPcRecommendationReportsPostRequestBody.setTop(15);
graphClient.deviceManagement().virtualEndpoint().report().retrieveCloudPcRecommendationReports().post(retrieveCloudPcRecommendationReportsPostRequestBody);


```