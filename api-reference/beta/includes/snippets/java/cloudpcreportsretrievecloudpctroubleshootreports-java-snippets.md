---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctroubleshootreports.RetrieveCloudPcTroubleshootReportsPostRequestBody retrieveCloudPcTroubleshootReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctroubleshootreports.RetrieveCloudPcTroubleshootReportsPostRequestBody();
retrieveCloudPcTroubleshootReportsPostRequestBody.setReportName(CloudPCTroubleshootReportType.TroubleshootDetailsReport);
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UserPrincipalName");
select.add("UsageInsight");
select.add("CurrentSize");
select.add("CurrentCPU");
select.add("CurrentRamInGB");
select.add("CurrentDiskInGB");
select.add("RecommendedSize");
select.add("RecommendedCPU");
select.add("RecommendedRamInGB");
select.add("RecommendedDiskInGB");
select.add("ProvisionPolicyName");
select.add("RoundTripTimeInMsAvg");
select.add("AvailableBandwidthInMbpsAvg");
retrieveCloudPcTroubleshootReportsPostRequestBody.setSelect(select);
retrieveCloudPcTroubleshootReportsPostRequestBody.setSearch("");
retrieveCloudPcTroubleshootReportsPostRequestBody.setSkip(0);
retrieveCloudPcTroubleshootReportsPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().retrieveCloudPcTroubleshootReports().post(retrieveCloudPcTroubleshootReportsPostRequestBody);


```