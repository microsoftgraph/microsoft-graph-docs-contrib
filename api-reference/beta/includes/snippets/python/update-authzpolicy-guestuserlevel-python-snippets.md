---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AuthorizationPolicy()
additional_data = [
'guest_user_role' => '2af84b1e-32c8-42b7-82bc-daa82404023b', 
];
request_body.additional_data(additional_data)





result = await client.policies.authorization_policy.by_authorization_policy_id('authorizationPolicy-id').patch(request_body = request_body)


```