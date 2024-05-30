---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.device_management.remote_assistance_partners.by_remote_assistance_partner_id('remoteAssistancePartner-id').get()


```