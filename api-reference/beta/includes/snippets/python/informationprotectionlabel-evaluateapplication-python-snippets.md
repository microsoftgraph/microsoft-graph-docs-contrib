---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EvaluateApplicationPostRequestBody()
content_info = ContentInfo()
content_info.@odata_type = '#microsoft.graph.contentInfo'

content_info.format(ContentFormat.Default('contentformat.default'))

content_info.identifier=null

content_info.state(ContentState.Rest('contentstate.rest'))

metadata_key_value_pair1 = KeyValuePair()
metadata_key_value_pair1.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair1.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Enabled'

metadata_key_value_pair1.value = 'True'


metadataArray []= metadataKeyValuePair1;
metadata_key_value_pair2 = KeyValuePair()
metadata_key_value_pair2.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair2.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Method'

metadata_key_value_pair2.value = 'Standard'


metadataArray []= metadataKeyValuePair2;
metadata_key_value_pair3 = KeyValuePair()
metadata_key_value_pair3.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair3.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SetDate'

metadata_key_value_pair3.value = '1/1/0001 12:00:00 AM'


metadataArray []= metadataKeyValuePair3;
metadata_key_value_pair4 = KeyValuePair()
metadata_key_value_pair4.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair4.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_SiteId'

metadata_key_value_pair4.value = 'cfa4cf1d-a337-4481-aa99-19d8f3d63f7c'


metadataArray []= metadataKeyValuePair4;
metadata_key_value_pair5 = KeyValuePair()
metadata_key_value_pair5.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair5.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_Name'

metadata_key_value_pair5.value = 'General'


metadataArray []= metadataKeyValuePair5;
metadata_key_value_pair6 = KeyValuePair()
metadata_key_value_pair6.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair6.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ContentBits'

metadata_key_value_pair6.value = '0'


metadataArray []= metadataKeyValuePair6;
metadata_key_value_pair7 = KeyValuePair()
metadata_key_value_pair7.@odata_type = '#microsoft.graph.keyValuePair'

metadata_key_value_pair7.name = 'MSIP_Label_722a5300-ac39-4c9a-88e3-f54c46676417_ActionId'

metadata_key_value_pair7.value = '00000000-0000-0000-0000-000000000000'


metadataArray []= metadataKeyValuePair7;
content_info.metadata(metadataArray)


additional_data = [
'format@odata_type' => '#microsoft.graph.contentFormat', 
'state@odata_type' => '#microsoft.graph.contentState', 
'metadata@odata_type' => '#Collection(microsoft.graph.keyValuePair)', 
];
content_info.additional_data(additional_data)



request_body.content_info = content_info
labeling_options = LabelingOptions()
labeling_options.@odata_type = '#microsoft.graph.labelingOptions'

labeling_options.assignmentmethod(AssignmentMethod.Standard('assignmentmethod.standard'))

labeling_options.label_id = '97309856-9c28-4ac6-9382-5f8bc20c457b'

labeling_options.downgradeJustification=null

labeling_options.ExtendedProperties([])

additional_data = [
'assignment_method@odata_type' => '#microsoft.graph.assignmentMethod', 
'label_id@odata_type' => '#Guid', 
'extended_properties@odata_type' => '#Collection(microsoft.graph.keyValuePair)', 
];
labeling_options.additional_data(additional_data)



request_body.labeling_options = labeling_options


request_configuration = EvaluateApplicationRequestBuilder.EvaluateApplicationRequestBuilderPostRequestConfiguration(
headers = {
'User-Agent' : "ContosoLOBApp/1.0",
}

)


result = await client.information_protection.policy.labels.evaluate_application.post(request_body = request_body, request_configuration = request_configuration)


```