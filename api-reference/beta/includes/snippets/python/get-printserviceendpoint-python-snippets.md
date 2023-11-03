---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.print.services.by_print_service_id('printService-id').endpoints.by_print_service_endpoint_id('printServiceEndpoint-id').get()


```