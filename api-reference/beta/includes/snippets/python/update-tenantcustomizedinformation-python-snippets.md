---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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
	]
	website = "String",
)

result = await graph_client.tenant_relationships.managed_tenants.tenant_customized_information.by_tenant_customized_information_id('tenantCustomizedInformation-id').patch(body = request_body)


```