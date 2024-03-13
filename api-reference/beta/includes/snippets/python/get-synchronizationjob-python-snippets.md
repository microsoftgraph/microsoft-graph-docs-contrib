---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').get()


```