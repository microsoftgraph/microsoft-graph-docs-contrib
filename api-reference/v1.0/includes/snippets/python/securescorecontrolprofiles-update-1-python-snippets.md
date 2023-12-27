---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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