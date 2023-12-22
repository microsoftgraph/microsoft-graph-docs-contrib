---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExportJob cloudPcExportJob = new CloudPcExportJob();
cloudPcExportJob.reportName = CloudPcReportName.REMOTE_CONNECTION_QUALITY_REPORTS;
LinkedList<String> selectList = new LinkedList<String>();
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("AvgRoundTripTimeInMsP50");
selectList.add("LastConnectionRoundTripTimeInMs");
selectList.add("AvgAvailableBandwidthInMBpsP50");
selectList.add("LastConnectionAvailableBandWidthInMSps");
selectList.add("AvgRemoteSignInTimeInSecP50");
selectList.add("UDPConnectionPercentage");
selectList.add("LastConnectionGateway");
selectList.add("LastConnectionProtocol");
selectList.add("EventDateTime");
cloudPcExportJob.select = selectList;
cloudPcExportJob.filter = "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'";

graphClient.deviceManagement().virtualEndpoint().reports().exportJobs()
	.buildRequest()
	.post(cloudPcExportJob);

```