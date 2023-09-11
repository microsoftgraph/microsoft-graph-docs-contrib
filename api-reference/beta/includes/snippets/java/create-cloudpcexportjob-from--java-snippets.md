---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExportJob cloudPcExportJob = new CloudPcExportJob();
cloudPcExportJob.reportName = CloudPcReportName.TOTAL_AGGREGATED_REMOTE_CONNECTION_REPORTS;
LinkedList<String> selectList = new LinkedList<String>();
selectList.add("CloudPcId");
selectList.add("ManagedDeviceName");
selectList.add("UserPrincipalName");
selectList.add("DaysSinceLastSignIn");
selectList.add("TotalUsageInHour");
cloudPcExportJob.select = selectList;

graphClient.deviceManagement().virtualEndpoint().reports().exportJobs()
	.buildRequest()
	.post(cloudPcExportJob);

```