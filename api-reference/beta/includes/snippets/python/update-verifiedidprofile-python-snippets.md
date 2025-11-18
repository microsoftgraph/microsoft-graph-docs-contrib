---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.verified_id_profile import VerifiedIdProfile
from msgraph_beta.generated.models.verified_id_usage_configuration import VerifiedIdUsageConfiguration
from msgraph_beta.generated.models.verified_id_usage_configuration_purpose import VerifiedIdUsageConfigurationPurpose
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifiedIdProfile(
	verified_id_usage_configurations = [
		VerifiedIdUsageConfiguration(
			is_enabled_for_test_only = False,
			purpose = VerifiedIdUsageConfigurationPurpose.Recovery,
		),
	],
)

result = await graph_client.identity.verified_id.profiles.by_verified_id_profile_id('verifiedIdProfile-id').patch(request_body)


```