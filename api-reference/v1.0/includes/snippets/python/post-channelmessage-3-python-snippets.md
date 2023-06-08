---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChatMessage()
request_body.createdDateTime = DateTime('2019-02-04T19:58:15.511Z')

from = ChatMessageFromIdentitySet()
fromuser = Identity()
fromuser.id = 'id-value'

fromuser.display_name = 'John Doe'

additional_data = [
'user_identity_type' => 'aadUser', 
];
fromuser.additional_data(additional_data)



from.user = fromuser

request_body.from = from
body = ItemBody()
body.contenttype(BodyType.Html('bodytype.html'))

body.content = '<div><div>\n<div><span><img height=\"250\" src=\"../hostedContents/1/$value\" width=\"176.2295081967213\" style=\"vertical-align:bottom; width:176px; height:250px\"></span>\n\n</div>\n\n\n</div>\n</div>'


request_body.body = body
hosted_contents_chat_message_hosted_content1 = ChatMessageHostedContent()
hosted_contents_chat_message_hosted_content1.ContentBytes(base64_decode('iVBORw0KGgoAAAANSUhEUgAAANcAAAExCAYAAADvFzeeAAAXjklEQVR4Ae2d/XNU1RnH+9e0FFrA0RCIyaS8hRA0HV5KbS1gHRgVpjMClY4GHJ3yYm1HCmXaWttaaZUZtIIFKYi8lFAkvOQ9u5vN225IARVBbX9/Os9NbrLZbMjmhCfJPX5+2Lmb3T25y3O+n/M599x7w9f+++UXwoMakIF7n4GvUdR7X1RqSk01A8CFuZm5GGUAuIwKi72wF3ABF+YyygBwGRUWc2Eu4AIuzGWUAeAyKizmwlzABVyYyygDwGVUWMyFuYALuDCXUQaAy6iwmAtzARdwfWXMdeuzT+TGxz3Sfb1LunrapL07IW3pePDQ5/qavqef0c+OdYAELuAac4jGGkLL9rdvfyo9N9ODQAqBGmmrwGlb/R0u3xG4gMspOC5hG882CoRaaCSA8n1ff9doIQMu4PIOrus3u+8ZVNnw6e/Od5AALuDKOyz5hmqiPnfnzi1J9bSbgRWCpvvQfY307wQu4BoxJCOFaDK8rwsQmQsUIQhWW93XSIsewAVckYdLQ24F0Ui/926AARdwRRounZ6Np7GyYdN9DzdFBC7gijRc43GMlQ1U9s/6HXJNjYELuHI<<-----Removed----->>>>'))

hosted_contents_chat_message_hosted_content1.content_type = 'image/png'

additional_data = [
'@microsoft_graph_temporary_id' => '1', 
];
hosted_contents_chat_message_hosted_content1.additional_data(additional_data)



hostedContentsArray []= hostedContentsChatMessageHostedContent1;
request_body.hostedcontents(hostedContentsArray)





result = await client.teams.by_team_id('team-id').channels.by_channel_id('channel-id').messages.post(request_body = request_body)


```