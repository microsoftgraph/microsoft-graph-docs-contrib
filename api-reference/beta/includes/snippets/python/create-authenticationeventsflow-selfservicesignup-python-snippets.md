---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalUsersSelfServiceSignUpEventsFlow(
	odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	display_name = "Woodgrove Drive User Flow",
	on_authentication_method_load_start = OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp(
		odata_type = "#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp",
		identity_providers = [
			IdentityProviderBase(
				id = "EmailPassword-OAUTH",
			),
		],
	),
	on_interactive_auth_flow_start = OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp(
		odata_type = "#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp",
		is_sign_up_allowed = True,
	),
	on_attribute_collection = OnAttributeCollectionExternalUsersSelfServiceSignUp(
		odata_type = "#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp",
		attributes = [
			IdentityUserFlowAttribute(
				id = "email",
				display_name = "Email Address",
				description = "Email address of the user",
				user_flow_attribute_type = IdentityUserFlowAttributeType.BuiltIn,
				data_type = IdentityUserFlowAttributeDataType.String,
			),
			IdentityUserFlowAttribute(
				id = "displayName",
				display_name = "Display Name",
				description = "Display Name of the User.",
				user_flow_attribute_type = IdentityUserFlowAttributeType.BuiltIn,
				data_type = IdentityUserFlowAttributeDataType.String,
			),
		],
		attribute_collection_page = AuthenticationAttributeCollectionPage(
			views = [
				AuthenticationAttributeCollectionPageViewConfiguration(
					inputs = [
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "email",
							label = "Email Address",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							hidden = True,
							editable = False,
							write_to_directory = True,
							required = True,
							validation_reg_ex = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$",
						),
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "displayName",
							label = "Display Name",
							input_type = AuthenticationAttributeCollectionInputType.Text,
							hidden = False,
							editable = True,
							write_to_directory = True,
							required = False,
							validation_reg_ex = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
						),
					],
				),
			],
		),
	),
)

result = await graph_client.identity.authentication_events_flows.post(request_body)


```