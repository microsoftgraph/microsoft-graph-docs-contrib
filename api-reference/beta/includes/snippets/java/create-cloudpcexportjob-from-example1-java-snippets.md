---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcExportJob cloudPcExportJob = new CloudPcExportJob();
cloudPcExportJob.setReportName(CloudPcReportName.TotalAggregatedRemoteConnectionReports);
LinkedList<String> select = new LinkedList<String>();
select.add("CloudPcId");
select.add("ManagedDeviceName");
select.add("UserPrincipalName");
select.add("DaysSinceLastSignIn");
select.add("TotalUsageInHour");
cloudPcExportJob.setSelect(select);
CloudPcExportJob result = graphClient.deviceManagement().virtualEndpoint().reports().exportJobs().post(cloudPcExportJob);


```