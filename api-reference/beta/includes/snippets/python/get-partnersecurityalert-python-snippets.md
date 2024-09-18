---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.partner.security_alerts.by_partner_security_alert_id('partnerSecurityAlert-id').get()


```