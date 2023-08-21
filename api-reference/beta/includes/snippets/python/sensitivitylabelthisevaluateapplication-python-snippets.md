---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EvaluateApplicationPostRequestBody()
content_info = ContentInfo()
content_info.@odata_type = '#microsoft.graph.security.contentInfo'

content_info.content_format = 'File'

content_info.identifier=null

content_info.state(ContentState.Rest('contentstate.rest'))

metadata_key_value_pair1 = KeyValuePair()
metadata_key_value_pair1.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair1.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled'

metadata_key_value_pair1.value = 'True'


metadataArray []= metadataKeyValuePair1;
metadata_key_value_pair2 = KeyValuePair()
metadata_key_value_pair2.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair2.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method'

metadata_key_value_pair2.value = 'Standard'


metadataArray []= metadataKeyValuePair2;
metadata_key_value_pair3 = KeyValuePair()
metadata_key_value_pair3.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair3.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate'

metadata_key_value_pair3.value = '1/1/0001 12:00:00 AM'


metadataArray []= metadataKeyValuePair3;
metadata_key_value_pair4 = KeyValuePair()
metadata_key_value_pair4.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair4.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId'

metadata_key_value_pair4.value = 'cfa4cf1d-a337-4481-aa99-19d8f3d63f7c'


metadataArray []= metadataKeyValuePair4;
metadata_key_value_pair5 = KeyValuePair()
metadata_key_value_pair5.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair5.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name'

metadata_key_value_pair5.value = 'LabelScopedToBob_Tests'


metadataArray []= metadataKeyValuePair5;
metadata_key_value_pair6 = KeyValuePair()
metadata_key_value_pair6.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair6.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits'

metadata_key_value_pair6.value = '0'


metadataArray []= metadataKeyValuePair6;
metadata_key_value_pair7 = KeyValuePair()
metadata_key_value_pair7.@odata_type = '#microsoft.graph.security.keyValuePair'

metadata_key_value_pair7.name = 'MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId'

metadata_key_value_pair7.value = '00000000-0000-0000-0000-000000000000'


metadataArray []= metadataKeyValuePair7;
content_info.metadata(metadataArray)


additional_data = [
'format@odata_type' => '#microsoft.graph.security.contentFormat', 
'format' => 'default', 
'state@odata_type' => '#microsoft.graph.security.contentState', 
'metadata@odata_type' => '#Collection(microsoft.graph.security.keyValuePair)', 
];
content_info.additional_data(additional_data)



request_body.content_info = content_info
labeling_options = LabelingOptions()
labeling_options.@odata_type = '#microsoft.graph.security.labelingOptions'

labeling_options.assignmentmethod(AssignmentMethod.Standard('assignmentmethod.standard'))

labeling_options.label_id = '836ff34f-b604-4a62-a68c-d6be4205d569'

labeling_optionsdowngrade_justification = DowngradeJustification()
labeling_optionsdowngrade_justification.justification_message = 'Justified'

labeling_optionsdowngrade_justification.is_downgrade_justified = True


labeling_options.downgrade_justification = labeling_optionsdowngrade_justification
labeling_options.ExtendedProperties([])

additional_data = [
'assignment_method@odata_type' => '#microsoft.graph.security.assignmentMethod', 
'label_id@odata_type' => '#Guid', 
'extended_properties@odata_type' => '#Collection(microsoft.graph.security.keyValuePair)', 
];
labeling_options.additional_data(additional_data)



request_body.labeling_options = labeling_options


request_configuration = EvaluateApplicationRequestBuilder.EvaluateApplicationRequestBuilderPostRequestConfiguration(
headers = {
'User-Agent' : "ContosoLobApp/1.0",
}

)


result = await client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_evaluate_application.post(request_body = request_body, request_configuration = request_configuration)


```