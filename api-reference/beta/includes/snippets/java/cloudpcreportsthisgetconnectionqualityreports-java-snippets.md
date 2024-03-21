---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getconnectionqualityreports.GetConnectionQualityReportsPostRequestBody getConnectionQualityReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getconnectionqualityreports.GetConnectionQualityReportsPostRequestBody();
getConnectionQualityReportsPostRequestBody.setFilter("EventDateTime gt datetime'2023-04-16T07:40:41.694Z'");
getConnectionQualityReportsPostRequestBody.setSearch("");
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("AvgRoundTripTimeInMsP50");
select.add("LastConnectionRoundTripTimeInMs");
select.add("AvgAvailableBandwidthInMBpsP50");
select.add("LastConnectionAvailableBandWidthInMSps");
select.add("AvgRemoteSignInTimeInSecP50");
select.add("UDPConnectionPercentage");
select.add("LastConnectionGateway");
select.add("LastConnectionProtocol");
select.add("EventDateTime");
getConnectionQualityReportsPostRequestBody.setSelect(select);
getConnectionQualityReportsPostRequestBody.setSkip(0);
getConnectionQualityReportsPostRequestBody.setTop(25);
LinkedList<String> orderBy = new LinkedList<String>();
getConnectionQualityReportsPostRequestBody.setOrderBy(orderBy);
graphClient.deviceManagement().virtualEndpoint().reports().getConnectionQualityReports().post(getConnectionQualityReportsPostRequestBody);


```