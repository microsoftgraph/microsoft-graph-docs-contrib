---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.reports.get_group_archived_print_jobs_with_group_id_with_start_date_time_with_end_date_time("{endDateTime}","{groupId}","{startDateTime}").get()


```