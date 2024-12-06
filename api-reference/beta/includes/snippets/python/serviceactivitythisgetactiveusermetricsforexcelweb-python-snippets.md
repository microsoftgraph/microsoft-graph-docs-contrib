---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.reports.service_activity.get_active_user_metrics_for_excel_web_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time("{exclusiveIntervalEndDateTime}","{inclusiveIntervalStartDateTime}").get()


```