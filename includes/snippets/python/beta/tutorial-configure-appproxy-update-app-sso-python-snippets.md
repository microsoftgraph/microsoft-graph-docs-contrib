---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Application()
additional_data = [
'on_premises_publishing' => request_body = OnPremisesPublishing()
single_sign_on_settings = SingleSignOnSettings()
single_sign_on_settingskerberos_sign_on_settings = KerberosSignOnSettings()
		single_sign_on_settingskerberos_sign_on_settings.kerberos_service_principal_name = 'HTTP/iwademo.contoso.com'

		single_sign_on_settingskerberos_sign_on_settings.kerberos_sign_on_mapping_attribute_type = 'userPrincipalName'


single_sign_on_settings.kerberos_sign_on_settings = single_sign_on_settingskerberos_sign_on_settings
		single_sign_on_settings.single_sign_on_mode = 'onPremisesKerberos'


request_body.single_sign_on_settings = single_sign_on_settings

request_body.on_premises_publishing = onPremisesPublishing

];
request_body.additional_data(additional_data)





await client.applications.by_application_id('application-id').patch(request_body = request_body)


```