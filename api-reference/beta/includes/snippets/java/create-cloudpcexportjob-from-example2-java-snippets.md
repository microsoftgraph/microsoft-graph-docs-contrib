---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcExportJob cloudPcExportJob = new CloudPcExportJob();
cloudPcExportJob.setReportName(CloudPcReportName.RemoteConnectionQualityReports);
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
cloudPcExportJob.setSelect(select);
cloudPcExportJob.setFilter("EventDateTime gt datetime'2023-06-14T07:40:41.694Z'");
CloudPcExportJob result = graphClient.deviceManagement().virtualEndpoint().reports().exportJobs().post(cloudPcExportJob);


```