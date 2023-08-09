---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = SecureScoreControlProfile()
vendor_information = SecurityVendorInformation()
vendor_information.provider = 'SecureScore'

vendor_information.providerVersion=null

vendor_information.subProvider=null

vendor_information.vendor = 'Microsoft'


request_body.vendor_information = vendor_information
additional_data = [
'assigned_to' => '', 
'comment' => 'control is reviewed', 
'state' => 'Reviewed', 
];
request_body.additional_data(additional_data)





result = await client.security.secure_score_control_profiles.by_secure_score_control_profile_id('secureScoreControlProfile-id').patch(request_body = request_body)


```