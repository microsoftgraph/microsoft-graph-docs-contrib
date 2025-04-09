---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.partner.security.partner_security_alert import PartnerSecurityAlert
from msgraph_beta.generated.models.security_alert_status import SecurityAlertStatus
from msgraph_beta.generated.models.security_alert_resolved_reason import SecurityAlertResolvedReason
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PartnerSecurityAlert(
	status = SecurityAlertStatus.Resolved,
	resolved_reason = SecurityAlertResolvedReason.Fraud,
)

result = await graph_client.security.partner.security_alerts.by_partner_security_alert_id('partnerSecurityAlert-id').patch(request_body)


```