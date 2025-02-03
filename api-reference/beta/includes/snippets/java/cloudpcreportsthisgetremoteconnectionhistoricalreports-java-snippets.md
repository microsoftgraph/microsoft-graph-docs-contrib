---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getremoteconnectionhistoricalreports.GetRemoteConnectionHistoricalReportsPostRequestBody getRemoteConnectionHistoricalReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getremoteconnectionhistoricalreports.GetRemoteConnectionHistoricalReportsPostRequestBody();
getRemoteConnectionHistoricalReportsPostRequestBody.setFilter("CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'");
LinkedList<String> select = new LinkedList<String>();
select.add("SignInDateTime");
select.add("SignOutDateTime");
select.add("UsageInHour");
select.add("RoundTripTimeInMsP50");
select.add("AvailableBandwidthInMBpsP50");
select.add("RemoteSignInTimeInSec");
getRemoteConnectionHistoricalReportsPostRequestBody.setSelect(select);
getRemoteConnectionHistoricalReportsPostRequestBody.setTop(25);
getRemoteConnectionHistoricalReportsPostRequestBody.setSkip(0);
graphClient.deviceManagement().virtualEndpoint().reports().getRemoteConnectionHistoricalReports().post(getRemoteConnectionHistoricalReportsPostRequestBody);


```