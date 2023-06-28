---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementExportJob deviceManagementExportJob = new DeviceManagementExportJob();
deviceManagementExportJob.reportName = "Report Name value";
deviceManagementExportJob.filter = "Filter value";
LinkedList<String> selectList = new LinkedList<String>();
selectList.add("Select value");
deviceManagementExportJob.select = selectList;
deviceManagementExportJob.format = DeviceManagementReportFileFormat.PDF;
deviceManagementExportJob.snapshotId = "Snapshot Id value";
deviceManagementExportJob.localizationType = DeviceManagementExportJobLocalizationType.REPLACE_LOCALIZABLE_VALUES;
deviceManagementExportJob.status = DeviceManagementReportStatus.NOT_STARTED;
deviceManagementExportJob.url = "Url value";
deviceManagementExportJob.requestDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:03:07.1589002+00:00");
deviceManagementExportJob.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");

graphClient.deviceManagement().reports().exportJobs()
	.buildRequest()
	.post(deviceManagementExportJob);

```