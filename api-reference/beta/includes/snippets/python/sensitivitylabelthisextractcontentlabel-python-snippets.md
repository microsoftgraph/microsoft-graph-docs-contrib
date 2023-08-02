---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExtractContentLabelPostRequestBody()
content_info = ContentInfo()
content_info.identifier = 'MyDoc.docx'

content_info.state(ContentState.Rest('contentstate.rest'))

metadata_key_value_pair1 = KeyValuePair()
metadata_key_value_pair1.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Enabled'

metadata_key_value_pair1.value = 'True'


metadataArray []= metadataKeyValuePair1;
metadata_key_value_pair2 = KeyValuePair()
metadata_key_value_pair2.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Method'

metadata_key_value_pair2.value = 'Standard'


metadataArray []= metadataKeyValuePair2;
metadata_key_value_pair3 = KeyValuePair()
metadata_key_value_pair3.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SetDate'

metadata_key_value_pair3.value = '1/1/0001 12:00:00 AM'


metadataArray []= metadataKeyValuePair3;
metadata_key_value_pair4 = KeyValuePair()
metadata_key_value_pair4.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_SiteId'

metadata_key_value_pair4.value = 'cfa4cf1d-a337-4481-aa99-19d8f3d63f7c'


metadataArray []= metadataKeyValuePair4;
metadata_key_value_pair5 = KeyValuePair()
metadata_key_value_pair5.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_Name'

metadata_key_value_pair5.value = 'LabelScopedToBob_Tests'


metadataArray []= metadataKeyValuePair5;
metadata_key_value_pair6 = KeyValuePair()
metadata_key_value_pair6.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ContentBits'

metadata_key_value_pair6.value = '0'


metadataArray []= metadataKeyValuePair6;
metadata_key_value_pair7 = KeyValuePair()
metadata_key_value_pair7.name = 'MSIP_Label_0ed12617-d0ef-4053-b8e4-ecf5bcf2ffb3_ActionId'

metadata_key_value_pair7.value = '00000000-0000-0000-0000-000000000000'


metadataArray []= metadataKeyValuePair7;
content_info.metadata(metadataArray)


additional_data = [
'format' => 'default', 
];
content_info.additional_data(additional_data)



request_body.content_info = content_info


request_configuration = ExtractContentLabelRequestBuilder.ExtractContentLabelRequestBuilderPostRequestConfiguration(
headers = {
	'User-Agent' : "ContosoLOBApp/1.0",
}

)


result = await client.users.by_user_id('user-id').security.information_protection.sensitivity_labels.microsoft_graph_security_extract_content_label.post(request_body = request_body, request_configuration = request_configuration)


```