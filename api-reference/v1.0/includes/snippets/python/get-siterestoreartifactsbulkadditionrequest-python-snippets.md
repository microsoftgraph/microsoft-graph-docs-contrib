---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.solutions.backup_restore.share_point_restore_sessions.by_share_point_restore_session_id('sharePointRestoreSession-id').site_restore_artifacts_bulk_addition_requests.by_site_restore_artifacts_bulk_addition_request_id('siteRestoreArtifactsBulkAdditionRequest-id').get()


```