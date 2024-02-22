---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.device_management.device_configurations.by_device_configuration_id('deviceConfiguration-id').device_setting_state_summaries.by_setting_state_device_summary_id('settingStateDeviceSummary-id').delete()


```