---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.remote_assistance_partner import RemoteAssistancePartner
from msgraph.generated.models.remote_assistance_onboarding_status import RemoteAssistanceOnboardingStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoteAssistancePartner(
	odata_type = "#microsoft.graph.remoteAssistancePartner",
	display_name = "Display Name value",
	onboarding_url = "https://example.com/onboardingUrl/",
	onboarding_status = RemoteAssistanceOnboardingStatus.Onboarding,
	last_connection_date_time = "2016-12-31T23:58:36.6670033-08:00",
)

result = await graph_client.device_management.remote_assistance_partners.by_remote_assistance_partner_id('remoteAssistancePartner-id').patch(request_body)


```