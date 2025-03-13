---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.managed_tenants.tenant_tag import TenantTag
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TenantTag(
	display_name = "Support",
	description = "Tenants that have purchased extended support",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_tags.post(request_body)


```