---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.site_restore_artifacts_bulk_addition_request import SiteRestoreArtifactsBulkAdditionRequest
from msgraph_beta.generated.models.time_period import TimePeriod
from msgraph_beta.generated.models.destination_type import DestinationType
from msgraph_beta.generated.models.restore_point_tags import RestorePointTags
from msgraph_beta.generated.models.restore_point_preference import RestorePointPreference
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SiteRestoreArtifactsBulkAdditionRequest(
	display_name = "SPO-BulkRestoreArtifacts",
	site_web_urls = [
		"https: //contoso1.sharepoint.com",
		"https: //contoso2.sharepoint.com",
		"https: //contoso3.sharepoint.com",
	],
	protection_time_period = TimePeriod(
		start_date_time = "2024-01-01T00:00:00Z",
		end_date_time = "2024-01-08T00:00:00Z",
	),
	destination_type = DestinationType.New,
	tags = RestorePointTags.FastRestore,
	restore_point_preference = RestorePointPreference.Latest,
)

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.by_share_point_restore_session_id('sharePointRestoreSession-id').site_restore_artifacts_bulk_addition_requests.post(request_body)


```