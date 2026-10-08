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
		target_organization_host = "https://fabrico-my.sharepoint.com",
		source_user_identity = UserIdentity(
			user_principal_name = "source-user@contoso.onmicrosoft.com",
		),
		target_user_identity = UserIdentity(
			user_principal_name = "target-user@fabrico.onmicrosoft.com",
		),
	),
)

result = await graph_client.solutions.share_point.migrations.cross_organization_migration_tasks.post(request_body)


```