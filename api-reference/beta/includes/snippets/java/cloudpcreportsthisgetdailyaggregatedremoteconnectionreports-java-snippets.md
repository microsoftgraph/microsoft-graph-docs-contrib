---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getdailyaggregatedremoteconnectionreports.GetDailyAggregatedRemoteConnectionReportsPostRequestBody getDailyAggregatedRemoteConnectionReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getdailyaggregatedremoteconnectionreports.GetDailyAggregatedRemoteConnectionReportsPostRequestBody();
getDailyAggregatedRemoteConnectionReportsPostRequestBody.setFilter("CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 ");
getDailyAggregatedRemoteConnectionReportsPostRequestBody.setSearch("abc0907");
LinkedList<String> select = new LinkedList<String>();
select.add("EventDateTime");
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UsageInHour");
select.add("RoundTripTimeInMsP50");
select.add("AvailableBandwidthInMBpsP50");
select.add("RemoteSignInTimeInSecP50");
select.add("UserPrincipalName");
getDailyAggregatedRemoteConnectionReportsPostRequestBody.setSelect(select);
getDailyAggregatedRemoteConnectionReportsPostRequestBody.setSkip(0);
getDailyAggregatedRemoteConnectionReportsPostRequestBody.setTop(25);
graphClient.deviceManagement().virtualEndpoint().reports().getDailyAggregatedRemoteConnectionReports().post(getDailyAggregatedRemoteConnectionReportsPostRequestBody);


```