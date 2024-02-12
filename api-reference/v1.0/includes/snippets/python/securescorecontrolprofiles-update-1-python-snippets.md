---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.secure_score_control_profile import SecureScoreControlProfile
from msgraph.generated.models.security_vendor_information import SecurityVendorInformation

graph_client = GraphServiceClient(credentials, scopes)

request_body = SecureScoreControlProfile(
	vendor_information = SecurityVendorInformation(
		provider = "SecureScore",
		provider_version = None,
		sub_provider = None,
		vendor = "Microsoft",
	),
	additional_data = {
			"assigned_to" : "",
			"comment" : "control is reviewed",
			"state" : "Reviewed",
	}
)

result = await graph_client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').patch(request_body)


```