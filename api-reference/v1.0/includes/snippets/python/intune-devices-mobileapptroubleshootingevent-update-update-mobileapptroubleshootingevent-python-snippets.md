---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.mobile_app_troubleshooting_event import MobileAppTroubleshootingEvent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = MobileAppTroubleshootingEvent(
	odata_type = "#microsoft.graph.mobileAppTroubleshootingEvent",
)

result = await graph_client.device_management.mobile_app_troubleshooting_events.by_mobile_app_troubleshooting_event_id('mobileAppTroubleshootingEvent-id').patch(request_body)


```