---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.partner_security_alert import PartnerSecurityAlert

graph_client = GraphServiceClient(credentials, scopes)

request_body = PartnerSecurityAlert(
	status = SecurityAlertStatus.Resolved,
	resolved_reason = SecurityAlertResolvedReason.Fraud,
)

result = await graph_client.security.partner.security_alerts.by_partner_security_alert_id('partnerSecurityAlert-id').patch(request_body)


```