---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.share_point_migration_job import SharePointMigrationJob
from msgraph_beta.generated.models.share_point_migration_container_info import SharePointMigrationContainerInfo
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SharePointMigrationJob(
	container_info = SharePointMigrationContainerInfo(
		data_container_uri = "https://spoxxx.blob.core.windows.net/data?sp=rw&sig=",
		metadata_container_uri = "https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=",
		encryption_key = "base64 encoded key for AES-256-CBC encryption",
	),
)

result = await graph_client.storage.file_storage.containers.by_file_storage_container_id('fileStorageContainer-id').migration_jobs.post(request_body)


```