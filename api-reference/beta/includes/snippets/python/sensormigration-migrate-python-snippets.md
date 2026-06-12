---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.identities.sensormigration.microsoft_graph_security_migrate.migrate_post_request_body import MigratePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MigratePostRequestBody(
	sensor_ids = [
		"fdce0c43-15e8-e322-7656-aff297505af5",
		"a1b2c3d4-e5f6-7890-abcd-ef1234567890",
	],
)

result = await graph_client.security.identities.sensor_migration.microsoft_graph_security_migrate.post(request_body)


```