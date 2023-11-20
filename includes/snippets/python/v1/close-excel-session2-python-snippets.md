---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CloseSessionPostRequestBody(
)

request_configuration = CloseSessionRequestBuilder.CloseSessionRequestBuilderPostRequestConfiguration(
headers = {
		'workbook-session-id' : "{session-id}",
}

)

await graph_client.drives.by_drive_id('drive-id').items.by_drive_item_id('driveItem-id').workbook.close_session.post(request_body, request_configuration = request_configuration)


```