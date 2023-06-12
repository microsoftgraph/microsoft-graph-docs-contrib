---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DriveItem()
request_body.name = 'Just some files'

bundle = Bundle()

request_body.bundle = bundle
children_drive_item1 = DriveItem()
children_drive_item1.id = '1234asdf'


childrenArray []= childrenDriveItem1;
children_drive_item2 = DriveItem()
children_drive_item2.id = '1234qwerty'


childrenArray []= childrenDriveItem2;
request_body.children(childrenArray)


additional_data = [
'@microsoft_graph_conflict_behavior' => 'rename', 
];
request_body.additional_data(additional_data)





result = await client.drives.by_drive_id('drive-id').bundles.post(request_body = request_body)


```