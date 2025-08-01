---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.devicemanagement.virtualendpoint.cloudpcs.item.restore.restore_post_request_body import RestorePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RestorePostRequestBody(
	cloud_pc_snapshot_id = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8",
)

await graph_client.device_management.virtual_endpoint.cloud_p_cs.by_cloud_p_c_id('cloudPC-id').restore.post(request_body)


```