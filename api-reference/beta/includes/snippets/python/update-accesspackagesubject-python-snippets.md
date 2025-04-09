---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_package_subject import AccessPackageSubject
from msgraph_beta.generated.models.access_package_subject_lifecycle import AccessPackageSubjectLifecycle
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessPackageSubject(
	subject_lifecycle = AccessPackageSubjectLifecycle.Governed,
)

result = await graph_client.identity_governance.entitlement_management.subjects_with_object_id("{objectId}").patch(request_body)


```