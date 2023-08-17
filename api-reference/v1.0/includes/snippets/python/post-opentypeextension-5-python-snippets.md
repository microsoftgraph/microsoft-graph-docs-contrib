---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Conversation()
request_body.topic = 'Does anyone have a second?'

threads_conversation_thread1 = ConversationThread()
posts_post1 = Post()
posts_post1body = ItemBody()
posts_post1body.contenttype(BodyType.HTML('bodytype.html'))

posts_post1body.content = 'This is urgent!'


posts_post1.body = posts_post1body
extensions_extension1 = OpenTypeExtension()
extensions_extension1.@odata_type = 'microsoft.graph.openTypeExtension'

extensions_extension1.extension_name = 'Com.Contoso.Benefits'

additional_data = [
'company_name' => 'Contoso', 
'expiration_date' => '2016-08-03T11:00:00.000Z', 
'top_picks' => ['Employees only', 'Add spouse or guest', 'Add family', ],
];
extensions_extension1.additional_data(additional_data)



extensionsArray []= extensionsExtension1;
posts_post1.extensions(extensionsArray)



postsArray []= postsPost1;
threads_conversation_thread1.posts(postsArray)



threadsArray []= threadsConversationThread1;
request_body.threads(threadsArray)





result = await client.groups.by_group_id('group-id').conversations.post(request_body = request_body)


```