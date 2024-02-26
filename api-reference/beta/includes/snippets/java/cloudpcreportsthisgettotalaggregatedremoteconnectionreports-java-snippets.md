---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.gettotalaggregatedremoteconnectionreports.GetTotalAggregatedRemoteConnectionReportsPostRequestBody getTotalAggregatedRemoteConnectionReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.gettotalaggregatedremoteconnectionreports.GetTotalAggregatedRemoteConnectionReportsPostRequestBody();
getTotalAggregatedRemoteConnectionReportsPostRequestBody.setTop(25);
getTotalAggregatedRemoteConnectionReportsPostRequestBody.setSkip(0);
getTotalAggregatedRemoteConnectionReportsPostRequestBody.setFilter("(TotalUsageInHour ge 40 and TotalUsageInHour le 80)");
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UserPrincipalName");
select.add("TotalUsageInHour");
select.add("DaysSinceLastSignIn");
getTotalAggregatedRemoteConnectionReportsPostRequestBody.setSelect(select);
graphClient.deviceManagement().virtualEndpoint().reports().getTotalAggregatedRemoteConnectionReports().post(getTotalAggregatedRemoteConnectionReportsPostRequestBody);


```