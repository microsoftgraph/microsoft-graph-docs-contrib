---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.external_users_self_service_sign_up_events_flow import ExternalUsersSelfServiceSignUpEventsFlow
from msgraph_beta.generated.models.on_attribute_collection_external_users_self_service_sign_up import OnAttributeCollectionExternalUsersSelfServiceSignUp
from msgraph_beta.generated.models.authentication_attribute_collection_page import AuthenticationAttributeCollectionPage
from msgraph_beta.generated.models.authentication_attribute_collection_page_view_configuration import AuthenticationAttributeCollectionPageViewConfiguration
from msgraph_beta.generated.models.authentication_attribute_collection_input_configuration import AuthenticationAttributeCollectionInputConfiguration
from msgraph_beta.generated.models.authentication_attribute_collection_input_type import AuthenticationAttributeCollectionInputType
from msgraph_beta.generated.models.authentication_attribute_collection_option_configuration import AuthenticationAttributeCollectionOptionConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
							required = True,
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
							required = True,
							validation_reg_ex = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$",
							options = [
							],
						),
						AuthenticationAttributeCollectionInputConfiguration(
							attribute = "extension_331d514c0c18477583ea7dd5a79feda2_RockorCountry",
							label = "Rock music or Country",
							input_type = AuthenticationAttributeCollectionInputType.RadioSingleSelect,
							default_value = None,
							hidden = False,
							editable = True,
							write_to_directory = True,
							required = True,
							validation_reg_ex = "^.*",
							options = [
								AuthenticationAttributeCollectionOptionConfiguration(
									label = "Rock music",
									value = "Rock",
								),
								AuthenticationAttributeCollectionOptionConfiguration(
									label = "Country music",
									value = "Country",
								),
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