---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.work_hours_and_locations_setting import WorkHoursAndLocationsSetting
from msgraph_beta.generated.models.max_work_location_details import MaxWorkLocationDetails
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = WorkHoursAndLocationsSetting(
	max_shared_work_location_details = MaxWorkLocationDetails.Approximate,
)

result = await graph_client.me.settings.work_hours_and_locations.patch(request_body)


```