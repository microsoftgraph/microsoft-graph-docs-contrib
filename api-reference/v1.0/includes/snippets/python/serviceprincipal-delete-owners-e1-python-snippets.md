---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.serviceprincipals.item.owners.item.ref.$ref_delete_request_body import $refDeleteRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = $refDeleteRequestBody(
	additional_data = {
			"@odata_id" : "https://graph.microsoft.com/v1.0/directoryObjects/{id}",
	}
)

await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').owners.by_directory_object_id('directoryObject-id').ref.delete(request_body)


```