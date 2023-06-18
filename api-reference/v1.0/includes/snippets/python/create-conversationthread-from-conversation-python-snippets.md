---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConversationThread()
request_body.topic = 'Take your wellness days and rest'

posts_post1 = Post()
posts_post1body = ItemBody()
posts_post1body.contenttype(BodyType.Html('bodytype.html'))

posts_post1body.content = 'Waiting for the summer holidays.'


posts_post1.body = posts_post1body

postsArray []= postsPost1;
request_body.posts(postsArray)





result = await client.groups.by_group_id('group-id').conversations.by_conversation_id('conversation-id').threads.post(request_body = request_body)


```