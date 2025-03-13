---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationThread conversationThread = new ConversationThread();
conversationThread.setTopic("Take your wellness days and rest");
LinkedList<Post> posts = new LinkedList<Post>();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("Waiting for the summer holidays.");
post.setBody(body);
posts.add(post);
conversationThread.setPosts(posts);
ConversationThread result = graphClient.groups().byGroupId("{group-id}").conversations().byConversationId("{conversation-id}").threads().post(conversationThread);


```