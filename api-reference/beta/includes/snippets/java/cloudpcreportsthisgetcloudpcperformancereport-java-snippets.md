---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcperformancereport.GetCloudPcPerformanceReportPostRequestBody getCloudPcPerformanceReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getcloudpcperformancereport.GetCloudPcPerformanceReportPostRequestBody();
getCloudPcPerformanceReportPostRequestBody.setReportName(CloudPCPerformanceReportName.PerformanceTrendReport);
getCloudPcPerformanceReportPostRequestBody.setFilter("EventDateTime gt datetime'2023-10-13T00:00:00.000Z'");
LinkedList<String> select = new LinkedList<String>();
select.add("EventDateTime");
select.add("SlowRoundTripTimeCloudPcCount");
select.add("LowUdpConnectionPercentageCount");
select.add("NoActiveTimeConnectedCount");
select.add("LowActiveTimeConnectedCount");
getCloudPcPerformanceReportPostRequestBody.setSelect(select);
getCloudPcPerformanceReportPostRequestBody.setSearch("");
getCloudPcPerformanceReportPostRequestBody.setSkip(0);
getCloudPcPerformanceReportPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().getCloudPcPerformanceReport().post(getCloudPcPerformanceReportPostRequestBody);


```