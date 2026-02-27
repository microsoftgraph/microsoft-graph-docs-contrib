---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.devicemanagement.virtualendpoint.snapshots.purge_imported_snapshot.purge_imported_snapshot_post_request_body import PurgeImportedSnapshotPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PurgeImportedSnapshotPostRequestBody(
	snapshot_ids = [
		"7e8c3054-bda1-4e37-81c5-7d1b080a8849",
		"715c8075-6892-42f3-9550-40b4b48e13d2",
	],
)

await graph_client.device_management.virtual_endpoint.snapshots.purge_imported_snapshot.post(request_body)


```