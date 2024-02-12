---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.policies.token_issuance_policies.by_token_issuance_policy_id('tokenIssuancePolicy-id').delete()


```