---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

await graph_client.policies.mobile_app_management_policies.by_mobile_app_management_policy_id('mobileAppManagementPolicy-id').included_groups.by_group_id('group-id').ref.delete()


```