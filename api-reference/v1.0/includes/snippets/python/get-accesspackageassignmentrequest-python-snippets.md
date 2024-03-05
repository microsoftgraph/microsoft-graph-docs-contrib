---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.entitlement_management.assignment_requests.by_access_package_assignment_request_id('accessPackageAssignmentRequest-id').get()


```