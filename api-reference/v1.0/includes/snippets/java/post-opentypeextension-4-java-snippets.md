---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.groups.item.threads.item.posts.item.reply.ReplyPostRequestBody replyPostRequestBody = new com.microsoft.graph.groups.item.threads.item.posts.item.reply.ReplyPostRequestBody();
Post post = new Post();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>");
post.setBody(body);
LinkedList<Extension> extensions = new LinkedList<Extension>();
OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("Com.Contoso.HR");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("companyName", "Contoso");
additionalData.put("expirationDate", "2015-07-03T13:04:00.000Z");
LinkedList<String> topPicks = new LinkedList<String>();
topPicks.add("Employees only");
topPicks.add("Add spouse or guest");
topPicks.add("Add family");
additionalData.put("topPicks", topPicks);
extension.setAdditionalData(additionalData);
extensions.add(extension);
post.setExtensions(extensions);
replyPostRequestBody.setPost(post);
graphClient.groups().byGroupId("{group-id}").threads().byConversationThreadId("{conversationThread-id}").posts().byPostId("{post-id}").reply().post(replyPostRequestBody);


```