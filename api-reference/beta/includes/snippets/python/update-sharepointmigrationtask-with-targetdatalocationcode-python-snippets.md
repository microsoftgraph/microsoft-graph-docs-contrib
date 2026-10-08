---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_migration_task import SharePointMigrationTask
from msgraph_beta.generated.models.share_point_user_migration_task_parameters import SharePointUserMigrationTaskParameters
from msgraph_beta.generated.models.user_identity import UserIdentity
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointMigrationTask(
	parameters = SharePointUserMigrationTaskParameters(
		odata_type = "#microsoft.graph.sharePointUserMigrationTaskParameters",
		target_organization_id = UUID("78d010af-72cb-412f-8779-18ce9b5f553b"),
		target_data_location_code = None,
		source_user_identity = UserIdentity(
			id = "da157a29-f793-4dd6-9c73-41d2c73c2546",
		),
		target_user_identity = UserIdentity(
			id = "cb53ea98-6151-44cc-9c21-098a3c3e3988",
		),
	),
)

result = await graph_client.solutions.share_point.migrations.cross_organization_migration_tasks.post(request_body)


```