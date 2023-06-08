---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AudioRoutingGroup()
request_body.id = 'oneToOne'

request_body.routingmode(RoutingMode.OneToOne('routingmode.onetoone'))

request_body.Sources(['632899f8-2ea1-4604-8413-27bd2892079f', ])

request_body.Receivers(['550fae72-d251-43ec-868c-373732c2704f', '72f988bf-86f1-41af-91ab-2d7cd011db47', ])




result = await client.communications.calls.by_call_id('call-id').audio_routing_groups.by_audio_routing_group_id('audioRoutingGroup-id').patch(request_body = request_body)


```