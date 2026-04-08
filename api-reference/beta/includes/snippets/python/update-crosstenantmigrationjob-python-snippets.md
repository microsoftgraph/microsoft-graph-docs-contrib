---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.cross_tenant_migration_job import CrossTenantMigrationJob
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CrossTenantMigrationJob(
	complete_after_date_time = "2025-05-22T17:14:52Z",
)

result = await graph_client.solutions.migrations.cross_tenant_migration_jobs.by_cross_tenant_migration_job_id('crossTenantMigrationJob-id').patch(request_body)


```