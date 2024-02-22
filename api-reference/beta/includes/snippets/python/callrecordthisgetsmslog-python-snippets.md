---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.communications.call_records.microsoft_graph_call_records_get_sms_log_with_from_date_time_with_to_date_time("{fromDateTime}","{toDateTime}").get()


```