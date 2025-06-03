---
description: "Automatically generated file. DO NOT MODIFY"
---

```python
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.fqdn_filtering_rule import FqdnFilteringRule
from msgraph_beta.generated.models.networkaccess.fqdn import Fqdn

graph_service_client = GraphServiceClient(token_request_context, scopes)

request_body = FqdnFilteringRule(
    destinations=[
        Fqdn(value="bing.com"),
        Fqdn(value="*.bing.com"),
        Fqdn(value="bing.co.uk"),
    ]
)

result = await graph_service_client.network_access.filtering_policies.by_filtering_policy_id('cccccccc-2222-3333-4444-dddddddddddd').policy_rules.by_policy_rule_id('{policyRuleId}').patch(request_body)
```
