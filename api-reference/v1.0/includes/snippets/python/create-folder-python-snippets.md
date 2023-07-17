---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DriveItem()
request_body.name = 'New Folder'

folder = Folder()

request_body.folder = folder
additional_data = [
'@microsoft_graph_conflict_behavior' => 'rename', 
];
request_body.additional_data(additional_data)





result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').children.post(request_body = request_body)


```