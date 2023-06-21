---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Conversation()
request_body.topic = 'New head count'

threads_conversation_thread1 = ConversationThread()
posts_post1 = Post()
posts_post1body = ItemBody()
posts_post1body.contenttype(BodyType.Html('bodytype.html'))

posts_post1body.content = 'The confirmation will come by the end of the week.'


posts_post1.body = posts_post1body
new_participants_recipient1 = Recipient()
new_participants_recipient1email_address = EmailAddress()
new_participants_recipient1email_address.name = 'Adele Vance'

new_participants_recipient1email_address.address = 'AdeleV@contoso.onmicrosoft.com'


new_participants_recipient1.email_address = new_participants_recipient1email_address

newParticipantsArray []= newParticipantsRecipient1;
posts_post1.newparticipants(newParticipantsArray)



postsArray []= postsPost1;
threads_conversation_thread1.posts(postsArray)



threadsArray []= threadsConversationThread1;
request_body.threads(threadsArray)





result = await client.groups.by_group_id('group-id').conversations.post(request_body = request_body)


```