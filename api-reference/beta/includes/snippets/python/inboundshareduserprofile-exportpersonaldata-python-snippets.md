---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ExportPersonalDataPostRequestBody()
request_body.storage_location = 'MyStorageAccount'




await client.directory.inbound_shared_user_profiles.by_inbound_shared_user_profile_id('inboundSharedUserProfile-userId').export_personal_data.post(request_body = request_body)


```