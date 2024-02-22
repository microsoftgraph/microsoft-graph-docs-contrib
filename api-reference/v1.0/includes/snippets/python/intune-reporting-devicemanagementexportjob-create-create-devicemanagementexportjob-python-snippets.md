---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.device_management_export_job import DeviceManagementExportJob

graph_client = GraphServiceClient(credentials, scopes)

request_body = DeviceManagementExportJob(
	odata_type = "#microsoft.graph.deviceManagementExportJob",
	report_name = "Report Name value",
	filter = "Filter value",
	select = [
		"Select value",
	],
	format = DeviceManagementReportFileFormat.Pdf,
	snapshot_id = "Snapshot Id value",
	localization_type = DeviceManagementExportJobLocalizationType.ReplaceLocalizableValues,
	status = DeviceManagementReportStatus.NotStarted,
	url = "Url value",
	request_date_time = "2017-01-01T00:03:07.1589002-08:00",
	expiration_date_time = "2016-12-31T23:57:57.2481234-08:00",
)

result = await graph_client.device_management.reports.export_jobs.post(request_body)


```