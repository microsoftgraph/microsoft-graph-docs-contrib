---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_migration_task import SharePointMigrationTask
from msgraph_beta.generated.models.share_point_site_migration_task_parameters import SharePointSiteMigrationTaskParameters
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointMigrationTask(
	parameters = SharePointSiteMigrationTaskParameters(
		odata_type = "#microsoft.graph.sharePointSiteMigrationTaskParameters",
		target_organization_host = "https://fabrico-my.sharepoint.com",
		source_site_url = "https://contoso.sharepoint.com/sites/IT",
		target_site_url = "https://fabrico.sharepoint.com/sites/IT",
	),
)

result = await graph_client.solutions.share_point.migrations.cross_organization_migration_tasks.post(request_body)


```