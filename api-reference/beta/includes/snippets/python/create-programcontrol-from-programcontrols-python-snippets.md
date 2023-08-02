---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ProgramControl()
request_body.control_id = '7e59d237-2fb0-4e5d-b7bb-d4f9f9129213'

request_body.control_type_id = '6e4f3d20-c5c3-407f-9695-8460952bcc68'

request_body.program_id = '7e59d237-2fb0-4e5d-b7bb-d4f9f9129213'




result = await client.program_controls.post(request_body = request_body)


```