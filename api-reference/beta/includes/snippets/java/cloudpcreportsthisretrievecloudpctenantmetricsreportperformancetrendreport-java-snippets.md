---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctenantmetricsreport.RetrieveCloudPcTenantMetricsReportPostRequestBody retrieveCloudPcTenantMetricsReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctenantmetricsreport.RetrieveCloudPcTenantMetricsReportPostRequestBody();
retrieveCloudPcTenantMetricsReportPostRequestBody.setReportName(CloudPCPerformanceReportName.PerformanceTrendReport);
retrieveCloudPcTenantMetricsReportPostRequestBody.setFilter("EventDateTime gt datetime'2023-10-13T00:00:00.000Z'");
LinkedList<String> select = new LinkedList<String>();
select.add("EventDateTime");
select.add("SlowRoundTripTimeCloudPcCount");
select.add("LowUdpConnectionPercentageCount");
select.add("NoActiveTimeConnectedCount");
select.add("LowActiveTimeConnectedCount");
retrieveCloudPcTenantMetricsReportPostRequestBody.setSelect(select);
retrieveCloudPcTenantMetricsReportPostRequestBody.setSearch("");
retrieveCloudPcTenantMetricsReportPostRequestBody.setSkip(0);
retrieveCloudPcTenantMetricsReportPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().retrieveCloudPcTenantMetricsReport().post(retrieveCloudPcTenantMetricsReportPostRequestBody);


```