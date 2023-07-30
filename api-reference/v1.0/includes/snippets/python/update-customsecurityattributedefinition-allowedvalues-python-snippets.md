---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomSecurityAttributeDefinition()
additional_data = [
'allowed_values@delta' => allowed_values@delta1 = ()
		allowed_values@delta1.id = 'Baker'

		allowed_values@delta1.is_active = False


allowedValues@deltaArray []= allowedValues@delta1;
allowed_values@delta2 = ()
		allowed_values@delta2.id = 'Skagit'

		allowed_values@delta2.is_active = True


allowedValues@deltaArray []= allowedValues@delta2;
request_body.allowedvalues@delta(allowedValues@deltaArray)


];
request_body.additional_data(additional_data)




request_configuration = CustomSecurityAttributeDefinitionRequestBuilder.CustomSecurityAttributeDefinitionRequestBuilderPatchRequestConfiguration(
headers = {
	'OData-Version' : "4.01",
}

)


result = await client.directory.custom_security_attribute_definitions.by_custom_security_attribute_definition_id('customSecurityAttributeDefinition-id').patch(request_body = request_body, request_configuration = request_configuration)


```