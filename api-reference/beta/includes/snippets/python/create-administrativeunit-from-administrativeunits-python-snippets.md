---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdministrativeUnit()
request_body.display_name = 'Seattle District Technical Schools'

request_body.description = 'Seattle district technical schools administration'

additional_data = [
'membership_type' => 'Dynamic', 
'membership_rule' => '(user.country -eq \"United States\")', 
'membership_rule_processing_state' => 'On', 
];
request_body.additional_data(additional_data)





result = await client.administrative_units.post(request_body = request_body)


```