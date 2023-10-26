---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalUsersSelfServiceSignUpEventsFlow(
	odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	on_attribute_collection = OnAttributeCollectionExternalUsersSelfServiceSignUp(
		odata_type = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
		attribute_collection_page = AuthenticationAttributeCollectionPage(
			custom_strings_file_id = None,
			views = [
				AuthenticationAttributeCollectionPageViewConfiguration(
					title = None,
					description = None,
					inputs = [
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "email",
							label = "Email Address",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							default_value = None,
							hidden = True,
							editable = False,
							write_to_directory = True,
							required = True,
							validation_reg_ex = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
							options = [
							],
						),
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "displayName",
							label = "Display Name",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							default_value = None,
							hidden = False,
							editable = True,
							write_to_directory = True,
							required = False,
							validation_reg_ex = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
							options = [
							],
						),
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "city",
							label = "City",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							default_value = None,
							hidden = False,
							editable = True,
							write_to_directory = True,
							required = False,
							validation_reg_ex = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
							options = [
							],
						),
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor",
							label = "Favorite color",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							default_value = None,
							hidden = False,
							editable = True,
							write_to_directory = True,
							required = False,
							validation_reg_ex = "^.*",
							options = [
							],
						),
					],
				),
			],
		),
	),
)

result = await graph_client.identity.authentication_events_flows.by_authentication_events_flow_id('authenticationEventsFlow-id').patch(request_body)


```