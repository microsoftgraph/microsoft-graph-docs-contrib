---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Conversation conversation = new Conversation();
conversation.setTopic("Does anyone have a second?");
LinkedList<ConversationThread> threads = new LinkedList<ConversationThread>();
ConversationThread conversationThread = new ConversationThread();
LinkedList<Post> posts = new LinkedList<Post>();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("This is urgent!");
post.setBody(body);
LinkedList<Extension> extensions = new LinkedList<Extension>();
OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("Com.Contoso.Benefits");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("companyName", "Contoso");
additionalData.put("expirationDate", "2016-08-03T11:00:00.000Z");
LinkedList<String> topPicks = new LinkedList<String>();
topPicks.add("Employees only");
topPicks.add("Add spouse or guest");
topPicks.add("Add family");
additionalData.put("topPicks", topPicks);
extension.setAdditionalData(additionalData);
extensions.add(extension);
post.setExtensions(extensions);
posts.add(post);
conversationThread.setPosts(posts);
threads.add(conversationThread);
conversation.setThreads(threads);
Conversation result = graphClient.groups().byGroupId("{group-id}").conversations().post(conversation);


```