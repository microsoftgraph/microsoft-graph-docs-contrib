---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval("{endDateTime}","{interval}","{startDateTime}").get()


```