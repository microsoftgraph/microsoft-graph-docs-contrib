---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationThread conversationThread = new ConversationThread();
conversationThread.setTopic("New Conversation Thread Topic");
LinkedList<Post> posts = new LinkedList<Post>();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("this is body content");
post.setBody(body);
LinkedList<Recipient> newParticipants = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Alex Darrow");
emailAddress.setAddress("alexd@contoso.com");
recipient.setEmailAddress(emailAddress);
newParticipants.add(recipient);
post.setNewParticipants(newParticipants);
posts.add(post);
conversationThread.setPosts(posts);
ConversationThread result = graphClient.groups().byGroupId("{group-id}").threads().post(conversationThread);


```