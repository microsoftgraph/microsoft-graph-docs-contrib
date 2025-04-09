---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.delegated_permission_classification import DelegatedPermissionClassification
from msgraph.generated.models.permission_classification_type import PermissionClassificationType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DelegatedPermissionClassification(
	permission_id = "e1fe6dd8-ba31-4d61-89e7-88639da4683d",
	permission_name = "User.Read",
	classification = PermissionClassificationType.Low,
)

result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').delegated_permission_classifications.post(request_body)


```