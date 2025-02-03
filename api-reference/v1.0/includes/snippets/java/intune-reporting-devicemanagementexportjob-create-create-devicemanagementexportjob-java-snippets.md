---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagementExportJob deviceManagementExportJob = new DeviceManagementExportJob();
deviceManagementExportJob.setOdataType("#microsoft.graph.deviceManagementExportJob");
deviceManagementExportJob.setReportName("Report Name value");
deviceManagementExportJob.setFilter("Filter value");
LinkedList<String> select = new LinkedList<String>();
select.add("Select value");
deviceManagementExportJob.setSelect(select);
deviceManagementExportJob.setFormat(DeviceManagementReportFileFormat.Pdf);
deviceManagementExportJob.setSnapshotId("Snapshot Id value");
deviceManagementExportJob.setLocalizationType(DeviceManagementExportJobLocalizationType.ReplaceLocalizableValues);
deviceManagementExportJob.setStatus(DeviceManagementReportStatus.NotStarted);
deviceManagementExportJob.setUrl("Url value");
OffsetDateTime requestDateTime = OffsetDateTime.parse("2017-01-01T00:03:07.1589002-08:00");
deviceManagementExportJob.setRequestDateTime(requestDateTime);
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-12-31T23:57:57.2481234-08:00");
deviceManagementExportJob.setExpirationDateTime(expirationDateTime);
DeviceManagementExportJob result = graphClient.deviceManagement().reports().exportJobs().post(deviceManagementExportJob);


```