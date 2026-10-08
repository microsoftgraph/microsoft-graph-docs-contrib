---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.secure_score_control_profiles.item.secure_score_control_profile_item_request_builder import SecureScoreControlProfileItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
from msgraph.generated.models.secure_score_control_profile import SecureScoreControlProfile
from msgraph.generated.models.security_vendor_information import SecurityVendorInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = SecureScoreControlProfile(
	vendor_information = SecurityVendorInformation(
		provider = "SecureScore",
		provider_version = None,
		sub_provider = None,
		vendor = "Microsoft",
	),
)

request_configuration = RequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")


result = await graph_client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').patch(request_body, request_configuration = request_configuration)


```