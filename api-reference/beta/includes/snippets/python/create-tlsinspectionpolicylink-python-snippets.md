---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.tls_inspection_policy_link import TlsInspectionPolicyLink
from msgraph_beta.generated.models.status import Status
from msgraph_beta.generated.models.networkaccess.tls_inspection_policy import TlsInspectionPolicy
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = TlsInspectionPolicyLink(
	odata_type = "#microsoft.graph.networkaccess.tlsInspectionPolicyLink",
	state = Status.Enabled,
	policy = TlsInspectionPolicy(
		odata_type = "#microsoft.graph.networkaccess.tlsInspectionPolicy",
		id = "b712c469-e7cd-e7cb-738f-94b199570b0d",
	),
)

result = await graph_client.network_access.filtering_profiles.by_filtering_profile_id('filteringProfile-id').policies.post(request_body)


```