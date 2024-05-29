---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_subject import AccessPackageSubject
from msgraph_beta.generated.models.access_package_subject_lifecycle import AccessPackageSubjectLifecycle

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageSubject(
	subject_lifecycle = AccessPackageSubjectLifecycle.Governed,
)

result = await graph_client.identity_governance.entitlement_management.subjects_with_object_id("{objectId}").patch(request_body)


```