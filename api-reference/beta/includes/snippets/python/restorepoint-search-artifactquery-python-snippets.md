---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backuprestore.restorepoints.search.search_post_request_body import SearchPostRequestBody
from msgraph_beta.generated.models.artifact_query import ArtifactQuery
from msgraph_beta.generated.models.restorable_artifact import RestorableArtifact
from msgraph_beta.generated.models.time_period import TimePeriod
from msgraph_beta.generated.models.restore_point_preference import RestorePointPreference
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SearchPostRequestBody(
	artifact_query = ArtifactQuery(
		query_expression = "(Sender -like 'abc@contoso.com') -and (Subject -like '*Check email*' -or Subject -like ' Important') -and (HasAttachment -eq 'true') -and (PitrDumpsterActionTriggeredTime -gt '2024-09-21T08:20:00.0000000Z')",
		artifact_type = RestorableArtifact.Message,
	),
	protection_unit_ids = [
		"23014d8c-71fe-4d00-a01a-31850bc5b42a",
	],
	protection_time_period = TimePeriod(
		start_date_time = "2021-01-01T00:00:00Z",
	),
	restore_point_preference = RestorePointPreference.Oldest,
)

result = await graph_client.solutions.backup_restore.restore_points.search.post(request_body)


```