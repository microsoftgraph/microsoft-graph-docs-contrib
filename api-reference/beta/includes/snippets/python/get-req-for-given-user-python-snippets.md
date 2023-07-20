---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GetApplicablePolicyRequirementsPostRequestBody()
additional_data = [
'subject' => request_body = Subject()
		request_body.object_id = '5acd375c-8acb-45de-a958-fa0dd89259ad'


request_body.subject = subject

];
request_body.additional_data(additional_data)





result = await client.identity_governance.entitlement_management.acce_packages.by_acce_package_id('accessPackage-id').get_applicable_policy_requirements.post(request_body = request_body)


```