---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.reference_create import ReferenceCreate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ReferenceCreate(
	odata_id = "https://graph.microsoft.com/odata/groups('1a9db3ab-0acf-4808-99ae-e8ed581cb2e0')",
)

await graph_client.policies.mobile_app_management_policies.by_mobile_app_management_policy_id('mobileAppManagementPolicy-id').included_groups.ref.post(request_body)


```