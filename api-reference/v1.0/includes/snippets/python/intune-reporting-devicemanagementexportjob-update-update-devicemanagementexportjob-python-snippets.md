---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceManagementExportJob()
request_body.@odata_type = '#microsoft.graph.deviceManagementExportJob'

request_body.report_name = 'Report Name value'

request_body.filter = 'Filter value'

request_body.Select(['Select value', ])

request_body.format(DeviceManagementReportFileFormat.Pdf('devicemanagementreportfileformat.pdf'))

request_body.snapshot_id = 'Snapshot Id value'

request_body.localizationtype(DeviceManagementExportJobLocalizationType.ReplaceLocalizableValues('devicemanagementexportjoblocalizationtype.replacelocalizablevalues'))

request_body.status(DeviceManagementReportStatus.NotStarted('devicemanagementreportstatus.notstarted'))

request_body.url = 'Url value'

request_body.requestDateTime = DateTime('2017-01-01T00:03:07.1589002-08:00')

request_body.expirationDateTime = DateTime('2016-12-31T23:57:57.2481234-08:00')




result = await client.device_management.reports.export_jobs.by_export_job_id('deviceManagementExportJob-id').patch(request_body = request_body)


```