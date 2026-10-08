---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctroubleshootreports.RetrieveCloudPcTroubleshootReportsPostRequestBody retrieveCloudPcTroubleshootReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.retrievecloudpctroubleshootreports.RetrieveCloudPcTroubleshootReportsPostRequestBody();
retrieveCloudPcTroubleshootReportsPostRequestBody.setReportName(CloudPCTroubleshootReportType.TroubleshootDetailsReport);
LinkedList<String> select = new LinkedList<String>();
select.add("EventDateTime");
select.add("TotalActiveConnectionCountAvg");
select.add("GroupColumn");
retrieveCloudPcTroubleshootReportsPostRequestBody.setSelect(select);
retrieveCloudPcTroubleshootReportsPostRequestBody.setFilter("(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')");
retrieveCloudPcTroubleshootReportsPostRequestBody.setTop(1000);
retrieveCloudPcTroubleshootReportsPostRequestBody.setSkip(0);
LinkedList<String> groupBy = new LinkedList<String>();
groupBy.add("GatewayRegion");
retrieveCloudPcTroubleshootReportsPostRequestBody.setGroupBy(groupBy);
graphClient.deviceManagement().virtualEndpoint().reports().retrieveCloudPcTroubleshootReports().post(retrieveCloudPcTroubleshootReportsPostRequestBody);


```