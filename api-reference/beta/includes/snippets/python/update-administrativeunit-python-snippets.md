---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdministrativeUnit()
request_body.display_name = 'Executive Division'

additional_data = [
'membership_type' => 'Dynamic', 
'membership_rule' => '(user.country -eq \"United States\")', 
'membership_rule_processing_state' => 'On', 
];
request_body.additional_data(additional_data)





result = await client.administrative_units.by_administrative_unit_id('administrativeUnit-id').patch(request_body = request_body)


```