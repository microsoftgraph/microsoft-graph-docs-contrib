---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.reports.export_jobs.by_device_management_export_job_id('deviceManagementExportJob-id').get()


```