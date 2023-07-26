---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = DeviceCompliancePolicyAssignment()
request_body.@odata_type = '#microsoft.graph.deviceCompliancePolicyAssignment'

target = ConfigurationManagerCollectionAssignmentTarget()
target.@odata_type = 'microsoft.graph.configurationManagerCollectionAssignmentTarget'

target.collection_id = 'Collection Id value'


request_body.target = target



result = await client.device_management.device_compliance_policies.by_device_compliance_policie_id('deviceCompliancePolicy-id').assignments.post(request_body = request_body)


```