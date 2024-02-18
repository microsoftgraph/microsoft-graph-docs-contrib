---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getrawremoteconnectionreports.GetRawRemoteConnectionReportsPostRequestBody getRawRemoteConnectionReportsPostRequestBody = new com.microsoft.graph.beta.devicemanagement.virtualendpoint.reports.getrawremoteconnectionreports.GetRawRemoteConnectionReportsPostRequestBody();
getRawRemoteConnectionReportsPostRequestBody.setFilter("ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'");
LinkedList<String> select = new LinkedList<String>();
select.add("RoundTripTimeInMs");
select.add("AvailableBandwidthInMBps");
select.add("SignInDateTime");
getRawRemoteConnectionReportsPostRequestBody.setSelect(select);
getRawRemoteConnectionReportsPostRequestBody.setSkip(0);
getRawRemoteConnectionReportsPostRequestBody.setTop(50);
graphClient.deviceManagement().virtualEndpoint().reports().getRawRemoteConnectionReports().post(getRawRemoteConnectionReportsPostRequestBody);


```