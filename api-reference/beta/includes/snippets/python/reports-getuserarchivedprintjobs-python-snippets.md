---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.reports.get_user_archived_print_jobs_with_user_id_with_start_date_time_with_end_date_time("{endDateTime}","{startDateTime}","{userId}").get()


```