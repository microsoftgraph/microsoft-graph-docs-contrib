---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.tenant_customized_information import TenantCustomizedInformation
from msgraph.generated.models.tenant_contact_information import TenantContactInformation

graph_client = GraphServiceClient(credentials, scopes)

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