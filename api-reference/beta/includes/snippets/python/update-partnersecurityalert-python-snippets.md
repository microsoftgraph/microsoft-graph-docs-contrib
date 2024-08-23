---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.partner.security.partner_security_alert import PartnerSecurityAlert
from msgraph_beta.generated.models.security_alert_status import SecurityAlertStatus
from msgraph_beta.generated.models.security_alert_resolved_reason import SecurityAlertResolvedReason

graph_client = GraphServiceClient(credentials, scopes)

request_body = PartnerSecurityAlert(
	status = SecurityAlertStatus.Resolved,
	resolved_reason = SecurityAlertResolvedReason.Fraud,
)

result = await graph_client.security.partner.security_alerts.by_partner_security_alert_id('partnerSecurityAlert-id').patch(request_body)


```