---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = RefreshSessionPostRequestBody()


request_configuration = RefreshSessionRequestBuilder.RefreshSessionRequestBuilderPostRequestConfiguration(
headers = {
		'workbook-session-id' : "{session-id}",
}

)


await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.refresh_session.post(request_body = request_body, request_configuration = request_configuration)


```