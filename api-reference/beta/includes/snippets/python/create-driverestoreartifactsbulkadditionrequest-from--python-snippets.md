---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.drive_restore_artifacts_bulk_addition_request import DriveRestoreArtifactsBulkAdditionRequest
from msgraph_beta.generated.models.time_period import TimePeriod
from msgraph_beta.generated.models.destination_type import DestinationType
from msgraph_beta.generated.models.restore_point_tags import RestorePointTags
from msgraph_beta.generated.models.restore_point_preference import RestorePointPreference
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = DriveRestoreArtifactsBulkAdditionRequest(
	display_name = "ODB-BulkRestoreArtifacts",
	drives = [
		"contoso1@micorosft.com",
		"consotos2@microsoft.com",
		"contoso3@microsoft.com",
	],
	directory_object_ids = [
	],
	protection_unit_ids = [
	],
	protection_time_period = TimePeriod(
		start_date_time = "2021-01-01T00:00:00Z",
		end_date_time = "2021-01-08T00:00:00Z",
	),
	destination_type = DestinationType.New,
	tags = RestorePointTags.FastRestore,
	restore_point_preference = RestorePointPreference.Latest,
)

result = await graph_client.solutions.backup_restore.one_drive_for_business_restore_sessions.by_one_drive_for_business_restore_session_id('oneDriveForBusinessRestoreSession-id').drive_restore_artifacts_bulk_addition_requests.post(request_body)


```