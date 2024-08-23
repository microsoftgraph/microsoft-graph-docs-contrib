---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').delegated_permission_classifications.by_delegated_permission_classification_id('delegatedPermissionClassification-id').delete()


```