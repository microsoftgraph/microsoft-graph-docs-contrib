---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EntitlementManagementSettings()
request_body.externaluserlifecycleaction(AccessPackageExternalUserLifecycleAction.None('accesspackageexternaluserlifecycleaction.none'))




result = await client.identity_governance.entitlement_management.settings.patch(request_body = request_body)


```