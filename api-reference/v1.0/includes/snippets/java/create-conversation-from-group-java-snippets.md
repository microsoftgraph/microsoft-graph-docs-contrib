---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Conversation conversation = new Conversation();
conversation.setTopic("Take your wellness days and rest");
LinkedList<ConversationThread> threads = new LinkedList<ConversationThread>();
ConversationThread conversationThread = new ConversationThread();
LinkedList<Post> posts = new LinkedList<Post>();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Contoso cares about you: Rest and Recharge");
post.setBody(body);
LinkedList<Recipient> newParticipants = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Adele Vance");
emailAddress.setAddress("AdeleV@contoso.com");
recipient.setEmailAddress(emailAddress);
newParticipants.add(recipient);
post.setNewParticipants(newParticipants);
posts.add(post);
conversationThread.setPosts(posts);
threads.add(conversationThread);
conversation.setThreads(threads);
Conversation result = graphClient.groups().byGroupId("{group-id}").conversations().post(conversation);


```