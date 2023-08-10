---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CopyToDefaultContentLocationPostRequestBody()
source_file = ItemReference()
source_filesharepoint_ids = SharepointIds()
source_filesharepoint_ids.list_id = 'e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0'

source_filesharepoint_ids.list_item_id = '2'


source_file.sharepoint_ids = source_filesharepoint_ids

request_body.source_file = source_file
request_body.destination_file_name = 'newname.txt'




await client.sites.by_site_id('site-id').content_types.by_content_type_id('contentType-id').copy_to_default_content_location.post(request_body = request_body)


```