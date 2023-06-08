---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = IdentityApiConnector()
authentication_configuration = ApiAuthenticationConfigurationBase()
authentication_configuration.@odata_type = '#microsoft.graph.pkcs12Certificate'

additional_data = [
'pkcs12_value' => 'eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA', 
'password' => 'secret', 
];
authentication_configuration.additional_data(additional_data)



request_body.authentication_configuration = authentication_configuration



result = await client.identity.api_connectors.by_api_connector_id('identityApiConnector-id').patch(request_body = request_body)


```