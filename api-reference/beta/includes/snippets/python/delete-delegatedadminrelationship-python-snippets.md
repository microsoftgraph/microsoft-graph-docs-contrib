---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.tenantRelationships.delegatedAdminRelationships.item.delegated_admin_relationship_item_request_builder import DelegatedAdminRelationshipItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = DelegatedAdminRelationshipItemRequestBuilder.DelegatedAdminRelationshipItemRequestBuilderDeleteRequestConfiguration()
request_configuration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"")


await graph_client.tenant_relationships.delegated_admin_relationships.by_delegated_admin_relationship_id('delegatedAdminRelationship-id').delete(request_configuration = request_configuration)


```