---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctenantmetricsreport.RetrieveCloudPcTenantMetricsReportPostRequestBody retrieveCloudPcTenantMetricsReportPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctenantmetricsreport.RetrieveCloudPcTenantMetricsReportPostRequestBody();
retrieveCloudPcTenantMetricsReportPostRequestBody.setReportName(CloudPCPerformanceReportName.CloudPcInsightReport);
retrieveCloudPcTenantMetricsReportPostRequestBody.setFilter("");
LinkedList<String> select = new LinkedList<String>();
select.add("ManagedDeviceName");
select.add("DeviceId");
select.add("ClientOS");
select.add("ClientVersion");
select.add("MultimediaRedirectVersion");
select.add("TeamsClientVersion");
select.add("HostOSVersion");
select.add("HostSxSStackVersion");
select.add("HostAgentVersion");
select.add("PolicyName");
select.add("UserSettingName");
select.add("HostRegion");
select.add("AzureNetworkConnectName");
retrieveCloudPcTenantMetricsReportPostRequestBody.setSelect(select);
retrieveCloudPcTenantMetricsReportPostRequestBody.setSearch("");
retrieveCloudPcTenantMetricsReportPostRequestBody.setSkip(0);
retrieveCloudPcTenantMetricsReportPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().retrieveCloudPcTenantMetricsReport().post(retrieveCloudPcTenantMetricsReportPostRequestBody);


```