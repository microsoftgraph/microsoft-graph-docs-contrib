---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessPackageSubject(
	subject_lifecycle = AccessPackageSubjectLifecycle.Governed,
)

result = await graph_client.identity_governance.entitlement_management.subjects_with_object_id("{objectId}").patch(request_body)


```