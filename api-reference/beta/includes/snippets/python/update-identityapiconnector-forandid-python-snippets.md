---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityApiConnector()
request_body.display_name = 'New Test API'

request_body.target_url = 'https://otherapi.com/api/endpoint'

authentication_configuration = ApiAuthenticationConfigurationBase()
authentication_configuration.@odata_type = 'microsoft.graph.basicAuthentication'

additional_data = [
'username' => '<NEW_USERNAME>', 
'password' => '<NEW_PASSWORD>', 
];
authentication_configuration.additional_data(additional_data)



request_body.authentication_configuration = authentication_configuration



result = await client.identity.api_connectors.by_api_connector_id('identityApiConnector-id').patch(request_body = request_body)


```