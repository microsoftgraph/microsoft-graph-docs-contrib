---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.report.retrievecloudpcclientappusagereport.RetrieveCloudPcClientAppUsageReportPostRequestBody retrieveCloudPcClientAppUsageReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.report.retrievecloudpcclientappusagereport.RetrieveCloudPcClientAppUsageReportPostRequestBody();
retrieveCloudPcClientAppUsageReportPostRequestBody.setFilter("");
retrieveCloudPcClientAppUsageReportPostRequestBody.setReportType(CloudPcClientAppUsageReportType.MicrosoftRemoteDesktopClientUsageReport);
LinkedList<String> select = new LinkedList<String>();
select.add("UPN");
select.add("LastSignOn");
select.add("DaysWithUsage");
retrieveCloudPcClientAppUsageReportPostRequestBody.setSelect(select);
retrieveCloudPcClientAppUsageReportPostRequestBody.setSearch("");
retrieveCloudPcClientAppUsageReportPostRequestBody.setSkip(0);
retrieveCloudPcClientAppUsageReportPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().report().retrieveCloudPcClientAppUsageReport().post(retrieveCloudPcClientAppUsageReportPostRequestBody);


```