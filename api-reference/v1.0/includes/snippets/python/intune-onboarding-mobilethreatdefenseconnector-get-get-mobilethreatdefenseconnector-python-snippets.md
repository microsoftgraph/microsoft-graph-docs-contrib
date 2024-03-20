---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.mobile_threat_defense_connectors.by_mobile_threat_defense_connector_id('mobileThreatDefenseConnector-id').get()


```