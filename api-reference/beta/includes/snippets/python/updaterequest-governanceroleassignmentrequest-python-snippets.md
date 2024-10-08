---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.privileged_access.by_privileged_access_id('privilegedAccess-id').role_assignment_requests.by_governance_role_assignment_request_id('governanceRoleAssignmentRequest-id').update_request.post(None)


```