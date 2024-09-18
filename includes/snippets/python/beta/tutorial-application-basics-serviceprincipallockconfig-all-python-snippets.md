---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.application import Application
from msgraph_beta.generated.models.service_principal_lock_configuration import ServicePrincipalLockConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = Application(
	service_principal_lock_configuration = ServicePrincipalLockConfiguration(
		is_enabled = True,
		all_properties = True,
	),
)

result = await graph_client.applications.by_application_id('application-id').patch(request_body)


```