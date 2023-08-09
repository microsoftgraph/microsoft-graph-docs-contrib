---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CalculatePostRequestBody()
request_body.calculation_type = 'calculationType-value'




await client.drives.by_drive_id('drive-id').items.by_item_id('driveItem-id').workbook.application.calculate.post(request_body = request_body)


```