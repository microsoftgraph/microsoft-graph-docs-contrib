---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.solutions.backup_restore.protection_policies.item.protection_policy_base_item_request_builder import ProtectionPolicyBaseItemRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = RequestConfiguration()
request_configuration.headers.add("Authorization", "Bearer <Access-Token>")


result = await graph_client.solutions.backup_restore.protection_policies.by_protection_policy_base_id('protectionPolicyBase-id').get(request_configuration = request_configuration)


```