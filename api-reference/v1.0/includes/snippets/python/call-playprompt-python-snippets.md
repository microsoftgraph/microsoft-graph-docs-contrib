---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlayPromptPostRequestBody()
request_body.client_context = 'd45324c1-fcb5-430a-902c-f20af696537c'

prompts_prompt1 = MediaPrompt()
prompts_prompt1.@odata_type = '#microsoft.graph.mediaPrompt'

prompts_prompt1media_info = MediaInfo()
prompts_prompt1media_info.@odata_type = '#microsoft.graph.mediaInfo'

prompts_prompt1media_info.uri = 'https://cdn.contoso.com/beep.wav'

prompts_prompt1media_info.resource_id = '1D6DE2D4-CD51-4309-8DAA-70768651088E'


prompts_prompt1.media_info = prompts_prompt1media_info

promptsArray []= promptsPrompt1;
request_body.prompts(promptsArray)





result = await client.communications.calls.by_call_id('call-id').play_prompt.post(request_body = request_body)


```