---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.virtual_endpoint.audit_events.by_cloud_pc_audit_event_id('cloudPcAuditEvent-id').get()


```