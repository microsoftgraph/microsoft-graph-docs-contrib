---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExternalUsersSelfServiceSignUpEventsFlow()
request_body.@odata_type = '#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow'

request_body.display_name = 'Woodgrove Drive User Flow'

conditions = AuthenticationConditions()
conditionsapplications = AuthenticationConditionsApplications()
include_applications_authentication_condition_application1 = AuthenticationConditionApplication()
include_applications_authentication_condition_application1.app_id = '63856651-13d9-4784-9abf-20758d509e19'


includeApplicationsArray []= includeApplicationsAuthenticationConditionApplication1;
conditionsapplications.includeapplications(includeApplicationsArray)



conditions.applications = conditionsapplications

request_body.conditions = conditions
on_authentication_method_load_start = OnAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp()
on_authentication_method_load_start.@odata_type = '#microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp'

identity_providers_identity_provider_base1 = IdentityProviderBase()
identity_providers_identity_provider_base1.id = 'EmailPassword-OAUTH'


identityProvidersArray []= identityProvidersIdentityProviderBase1;
on_authentication_method_load_start.identityproviders(identityProvidersArray)



request_body.on_authentication_method_load_start = on_authentication_method_load_start
on_interactive_auth_flow_start = OnInteractiveAuthFlowStartExternalUsersSelfServiceSignUp()
on_interactive_auth_flow_start.@odata_type = '#microsoft.graph.onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp'

on_interactive_auth_flow_start.is_sign_up_allowed = True


request_body.on_interactive_auth_flow_start = on_interactive_auth_flow_start
on_attribute_collection = OnAttributeCollectionExternalUsersSelfServiceSignUp()
on_attribute_collection.@odata_type = '#microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp'

attributes_identity_user_flow_attribute1 = IdentityUserFlowAttribute()
attributes_identity_user_flow_attribute1.id = 'email'

attributes_identity_user_flow_attribute1.display_name = 'Email Address'

attributes_identity_user_flow_attribute1.description = 'Email address of the user'

attributes_identity_user_flow_attribute1.userflowattributetype(IdentityUserFlowAttributeType.BuiltIn('identityuserflowattributetype.builtin'))

attributes_identity_user_flow_attribute1.datatype(IdentityUserFlowAttributeDataType.String('identityuserflowattributedatatype.string'))


attributesArray []= attributesIdentityUserFlowAttribute1;
attributes_identity_user_flow_attribute2 = IdentityUserFlowAttribute()
attributes_identity_user_flow_attribute2.id = 'displayName'

attributes_identity_user_flow_attribute2.display_name = 'Display Name'

attributes_identity_user_flow_attribute2.description = 'Display Name of the User.'

attributes_identity_user_flow_attribute2.userflowattributetype(IdentityUserFlowAttributeType.BuiltIn('identityuserflowattributetype.builtin'))

attributes_identity_user_flow_attribute2.datatype(IdentityUserFlowAttributeDataType.String('identityuserflowattributedatatype.string'))


attributesArray []= attributesIdentityUserFlowAttribute2;
on_attribute_collection.attributes(attributesArray)


on_attribute_collectionattribute_collection_page = AuthenticationAttributeCollectionPage()
views_authentication_attribute_collection_page_view_configuration1 = AuthenticationAttributeCollectionPageViewConfiguration()
inputs_authentication_attribute_collection_input_configuration1 = AuthenticationAttributeCollectionInputConfiguration()
inputs_authentication_attribute_collection_input_configuration1.attribute = 'email'

inputs_authentication_attribute_collection_input_configuration1.label = 'Email Address'

inputs_authentication_attribute_collection_input_configuration1.inputtype(AuthenticationAttributeCollectionInputType.Text('authenticationattributecollectioninputtype.text'))

inputs_authentication_attribute_collection_input_configuration1.hidden = True

inputs_authentication_attribute_collection_input_configuration1.editable = False

inputs_authentication_attribute_collection_input_configuration1.write_to_directory = True

inputs_authentication_attribute_collection_input_configuration1.required = True

inputs_authentication_attribute_collection_input_configuration1.validation_reg_ex = '^[a-zA-Z0-9.!#$%&amp;&#8217;\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$'


inputsArray []= inputsAuthenticationAttributeCollectionInputConfiguration1;
inputs_authentication_attribute_collection_input_configuration2 = AuthenticationAttributeCollectionInputConfiguration()
inputs_authentication_attribute_collection_input_configuration2.attribute = 'displayName'

inputs_authentication_attribute_collection_input_configuration2.label = 'Display Name'

inputs_authentication_attribute_collection_input_configuration2.inputtype(AuthenticationAttributeCollectionInputType.Text('authenticationattributecollectioninputtype.text'))

inputs_authentication_attribute_collection_input_configuration2.hidden = False

inputs_authentication_attribute_collection_input_configuration2.editable = True

inputs_authentication_attribute_collection_input_configuration2.write_to_directory = True

inputs_authentication_attribute_collection_input_configuration2.required = False

inputs_authentication_attribute_collection_input_configuration2.validation_reg_ex = '^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$'


inputsArray []= inputsAuthenticationAttributeCollectionInputConfiguration2;
views_authentication_attribute_collection_page_view_configuration1.inputs(inputsArray)



viewsArray []= viewsAuthenticationAttributeCollectionPageViewConfiguration1;
on_attribute_collectionattribute_collection_page.views(viewsArray)



on_attribute_collection.attribute_collection_page = on_attribute_collectionattribute_collection_page

request_body.on_attribute_collection = on_attribute_collection



result = await client.identity.authentication_event_flows.post(request_body = request_body)


```