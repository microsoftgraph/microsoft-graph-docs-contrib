---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Group()
assigned_labels_assigned_label1 = AssignedLabel()
assigned_labels_assigned_label1.label_id = '45cd0c48-c540-4358-ad79-a3658cdc5b88'


assignedLabelsArray []= assignedLabelsAssignedLabel1;
request_body.assignedlabels(assignedLabelsArray)





result = await client.groups.by_group_id('group-id').patch(request_body = request_body)


```