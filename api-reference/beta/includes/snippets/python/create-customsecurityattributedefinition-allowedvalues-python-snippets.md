---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CustomSecurityAttributeDefinition()
request_body.attribute_set = 'Engineering'

request_body.description = 'Active projects for user'

request_body.is_collection = True

request_body.is_searchable = True

request_body.name = 'Project'

request_body.status = 'Available'

request_body.type = 'String'

request_body.use_pre_defined_values_only = True

allowed_values_allowed_value1 = AllowedValue()
allowed_values_allowed_value1.id = 'Alpine'

allowed_values_allowed_value1.is_active = True


allowedValuesArray []= allowedValuesAllowedValue1;
allowed_values_allowed_value2 = AllowedValue()
allowed_values_allowed_value2.id = 'Baker'

allowed_values_allowed_value2.is_active = True


allowedValuesArray []= allowedValuesAllowedValue2;
allowed_values_allowed_value3 = AllowedValue()
allowed_values_allowed_value3.id = 'Cascade'

allowed_values_allowed_value3.is_active = True


allowedValuesArray []= allowedValuesAllowedValue3;
request_body.allowedvalues(allowedValuesArray)





result = await client.directory.custom_security_attribute_definitions.post(request_body = request_body)


```