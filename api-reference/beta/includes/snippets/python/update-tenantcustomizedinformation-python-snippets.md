---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.managed_tenants.tenant_customized_information import TenantCustomizedInformation
from msgraph_beta.generated.models.managed_tenants.tenant_contact_information import TenantContactInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TenantCustomizedInformation(
	odata_type = "#microsoft.graph.managedTenants.tenantCustomizedInformation",
	tenant_id = "String",
	contacts = [
		TenantContactInformation(
			odata_type = "microsoft.graph.managedTenants.tenantContactInformation",
			name = "String",
			title = "String",
			email = "String",
			phone = "String",
			notes = "String",
		),
	],
	website = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.tenants_customized_information.by_tenant_customized_information_id('tenantCustomizedInformation-id').patch(request_body)


```