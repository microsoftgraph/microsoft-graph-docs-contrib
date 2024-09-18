---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.service_principals.by_service_principal_id('servicePrincipal-id').permission_grant_pre_approval_policies.by_permission_grant_pre_approval_policy_id('permissionGrantPreApprovalPolicy-id').get()


```