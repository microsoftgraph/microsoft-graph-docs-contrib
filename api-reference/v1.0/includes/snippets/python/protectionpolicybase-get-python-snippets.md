---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.solutions.backup_restore.protection_policies.item.protection_policy_base_item_request_builder import ProtectionPolicyBaseItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <Access-Token>")


result = await graph_client.solutions.backup_restore.protection_policies.by_protection_policy_base_id('protectionPolicyBase-id').get(request_configuration = request_configuration)


```