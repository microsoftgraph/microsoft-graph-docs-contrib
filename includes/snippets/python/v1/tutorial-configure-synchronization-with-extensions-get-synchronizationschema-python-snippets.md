---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.servicePrincipals.item.synchronization.jobs.item.schema.schema_request_builder import SchemaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = SchemaRequestBuilder.SchemaRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer {Token}")


result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').synchronization.jobs.by_synchronization_job_id('synchronizationJob-id').schema.get(request_configuration = request_configuration)


```