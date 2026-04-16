---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_migration_job import CrossTenantMigrationJob
from msgraph_beta.generated.models.exchange_online_cross_tenant_migration_settings import ExchangeOnlineCrossTenantMigrationSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantMigrationJob(
	display_name = "xtmigration_user_req_1",
	complete_after_date_time = "2024-12-09T22:48:03.092Z",
	source_tenant_id = "12345678-1234-1234-1234-123456789012",
	exchange_settings = ExchangeOnlineCrossTenantMigrationSettings(
		target_delivery_domain = "xtmigration.onmicrosoft.com",
		source_endpoint = "sampleEndpointText",
	),
	resources = [
		"4dd550d9-9ea2-4e71-a16b-60b1d1c4f506",
		"63f15b55-f61a-49cb-a599-2e3d233afb2c",
		"41d94bac-3a53-47d6-a89e-583830104e15",
	],
	resource_type = "Users",
	workloads = [
		"Teams",
		"Exchange",
		"ODSP",
	],
)

result = await graph_client.solutions.migrations.cross_tenant_migration_jobs.post(request_body)


```