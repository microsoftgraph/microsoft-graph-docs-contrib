---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.security.ediscovery_case_member import EdiscoveryCaseMember
from msgraph_beta.generated.models.recipient_type import RecipientType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryCaseMember(
	recipient_type = RecipientType.RoleGroup,
	display_name = "Security Administrator",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').case_members.post(request_body)


```