---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getinaccessiblecloudpcreports.GetInaccessibleCloudPcReportsPostRequestBody getInaccessibleCloudPcReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getinaccessiblecloudpcreports.GetInaccessibleCloudPcReportsPostRequestBody();
getInaccessibleCloudPcReportsPostRequestBody.setFilter("region eq 'westus2'");
LinkedList<String> orderBy = new LinkedList<String>();
orderBy.add("cloudPcId");
getInaccessibleCloudPcReportsPostRequestBody.setOrderBy(orderBy);
LinkedList<String> select = new LinkedList<String>();
select.add("cloudPcId");
select.add("aadDeviceId");
select.add("cloudPcName");
select.add("userPrincipalName");
select.add("provisioningStatus");
select.add("region");
select.add("deviceHealthStatus");
select.add("deviceHealthStatusDateTime");
select.add("recentDeviceHealthFailureCount");
select.add("recentConnectionFailureCount");
select.add("systemStatus");
select.add("systemStatusDateTime");
getInaccessibleCloudPcReportsPostRequestBody.setSelect(select);
getInaccessibleCloudPcReportsPostRequestBody.setTop(10);
getInaccessibleCloudPcReportsPostRequestBody.setSkip(0);
graphClient.deviceManagement().virtualEndpoint().reports().getInaccessibleCloudPcReports().post(getInaccessibleCloudPcReportsPostRequestBody);


```