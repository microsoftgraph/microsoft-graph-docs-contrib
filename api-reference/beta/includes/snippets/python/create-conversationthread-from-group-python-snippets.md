---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConversationThread()
request_body.topic = 'New Conversation Thread Topic'

posts_post1 = Post()
posts_post1body = ItemBody()
posts_post1body.contenttype(BodyType.Html('bodytype.html'))

posts_post1body.content = 'this is body content'


posts_post1.body = posts_post1body
new_participants_recipient1 = Recipient()
new_participants_recipient1email_address = EmailAddress()
new_participants_recipient1email_address.name = 'Alex Darrow'

new_participants_recipient1email_address.address = 'alexd@contoso.com'


new_participants_recipient1.email_address = new_participants_recipient1email_address

newParticipantsArray []= newParticipantsRecipient1;
posts_post1.newparticipants(newParticipantsArray)



postsArray []= postsPost1;
request_body.posts(postsArray)





result = await client.groups.by_group_id('group-id').threads.post(request_body = request_body)


```