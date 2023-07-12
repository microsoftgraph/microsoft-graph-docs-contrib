---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = $valuePutRequestBody()
additional_data = [
'localized_strings' => localized_strings1 = ()
		localized_strings1.element_type = 'UxElement'

		localized_strings1.elementId=null

		localized_strings1.string_id = 'alert_message'

		localized_strings1.override = True

		localized_strings1.value = 'Are you sure that you want to cancel your selection?'


localizedStringsArray []= localizedStrings1;
request_body.localizedstrings(localizedStringsArray)


];
request_body.additional_data(additional_data)





await client.identity.b2c_user_flows.by_b2c_user_flow_id('b2cIdentityUserFlow-id').languages.by_language_id('userFlowLanguageConfiguration-id').override_pages.by_override_page_id('userFlowLanguagePage-id').content.put(request_body = request_body)


```