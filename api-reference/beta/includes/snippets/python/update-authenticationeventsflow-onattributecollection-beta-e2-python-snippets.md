---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_users_self_service_sign_up_events_flow import ExternalUsersSelfServiceSignUpEventsFlow
from msgraph.generated.models.on_attribute_collection_external_users_self_service_sign_up import OnAttributeCollectionExternalUsersSelfServiceSignUp
from msgraph.generated.models.authentication_attribute_collection_page import AuthenticationAttributeCollectionPage
from msgraph.generated.models.authentication_attribute_collection_page_view_configuration import AuthenticationAttributeCollectionPageViewConfiguration
from msgraph.generated.models.authentication_attribute_collection_input_configuration import AuthenticationAttributeCollectionInputConfiguration
from msgraph.generated.models.authentication_attribute_collection_option_configuration import AuthenticationAttributeCollectionOptionConfiguration

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