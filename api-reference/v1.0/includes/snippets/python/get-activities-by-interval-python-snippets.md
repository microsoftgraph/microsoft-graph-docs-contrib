---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').get_activities_by_interval_with_start_date_time_with_end_date_time_with_interval("{endDateTime}","{interval}","{startDateTime}").get()


```