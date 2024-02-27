---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.reports.export_jobs.by_cloud_pc_export_job_id('cloudPcExportJob-id').get()


```