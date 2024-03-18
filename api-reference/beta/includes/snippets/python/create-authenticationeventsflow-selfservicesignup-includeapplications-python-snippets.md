---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.external_users_self_service_sign_up_events_flow import ExternalUsersSelfServiceSignUpEventsFlow
from msgraph.generated.models.authentication_conditions import AuthenticationConditions
from msgraph.generated.models.authentication_conditions_applications import AuthenticationConditionsApplications
from msgraph.generated.models.authentication_condition_application import AuthenticationConditionApplication
from msgraph.generated.models.on_authentication_method_load_start_external_users_self_service_sign_up import OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp
from msgraph.generated.models.identity_provider_base import IdentityProviderBase
from msgraph.generated.models.on_interactive_auth_flow_start_external_users_self_service_sign_up import OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp
from msgraph.generated.models.on_attribute_collection_external_users_self_service_sign_up import OnAttributeCollectionExternalUsersSelfServiceSignUp
from msgraph.generated.models.identity_user_flow_attribute import IdentityUserFlowAttribute
from msgraph.generated.models.authentication_attribute_collection_page import AuthenticationAttributeCollectionPage
from msgraph.generated.models.authentication_attribute_collection_page_view_configuration import AuthenticationAttributeCollectionPageViewConfiguration
from msgraph.generated.models.authentication_attribute_collection_input_configuration import AuthenticationAttributeCollectionInputConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExternalUsersSelfServiceSignUpEventsFlow(
	odata_type = "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
	display_name = "Woodgrove Drive User Flow",
	conditions = AuthenticationConditions(
		applications = AuthenticationConditionsApplications(
			include_applications = [
				AuthenticationConditionApplication(
					app_id = "63856651-13d9-4784-9abf-20758d509e19",
				),
			],
		),
	),
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