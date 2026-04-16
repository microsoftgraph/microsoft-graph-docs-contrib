---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.migrations.crosstenantmigrationjobs.validate.validate_post_request_body import ValidatePostRequestBody
from msgraph_beta.generated.models.exchange_online_cross_tenant_migration_settings import ExchangeOnlineCrossTenantMigrationSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ValidatePostRequestBody(
	display_name = "Contoso_migration_validation_job",
	complete_after_date_time = "2025-05-22T17:14:52Z",
	source_tenant_id = "12345678-1234-1234-1234-123456789012",
	exchange_settings = ExchangeOnlineCrossTenantMigrationSettings(
		target_delivery_domain = "fabrikam.com",
		source_endpoint = "EXOHandler",
	),
	resources = [
		"b5b8bc4f-0e36-4ad3-8ddf-248b68260b89",
		"ac87d040-a081-426c-a73b-81133f458a29",
	],
	workloads = [
		"Teams",
	],
	resource_type = "Users",
)

result = await graph_client.solutions.migrations.cross_tenant_migration_jobs.validate.post(request_body)


```