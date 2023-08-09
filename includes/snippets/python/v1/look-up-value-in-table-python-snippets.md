---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = VlookupPostRequestBody()
request_body.lookup_value = 'pear'

table_array = Json()
additional_data = [
'address' => 'Sheet1!B2:C7', 
];
table_array.additional_data(additional_data)



request_body.table_array = table_array
request_body.ColIndexNum = 2

request_body.range_lookup = False



request_configuration = VlookupRequestBuilder.VlookupRequestBuilderPostRequestConfiguration(
headers = {
		'workbook-session-id' : "{session-id}",
}

)


result = await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.functions.vlookup.post(request_body = request_body, request_configuration = request_configuration)


```