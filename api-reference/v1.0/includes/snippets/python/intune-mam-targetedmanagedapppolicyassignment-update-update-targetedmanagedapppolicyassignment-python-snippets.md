---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TargetedManagedAppPolicyAssignment()
request_body.@odata_type = '#microsoft.graph.targetedManagedAppPolicyAssignment'

target = ConfigurationManagerCollectionAssignmentTarget()
target.@odata_type = 'microsoft.graph.configurationManagerCollectionAssignmentTarget'

target.collection_id = 'Collection Id value'


request_body.target = target



result = await client.device_app_management.io_managed_app_protections.by_io_managed_app_protection_id('iosManagedAppProtection-id').assignments.by_assignment_id('targetedManagedAppPolicyAssignment-id').patch(request_body = request_body)


```