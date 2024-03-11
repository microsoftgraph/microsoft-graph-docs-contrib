---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.getmailtips.GetMailTipsPostRequestBody getMailTipsPostRequestBody = new com.microsoft.graph.beta.users.item.getmailtips.GetMailTipsPostRequestBody();
LinkedList<String> emailAddresses = new LinkedList<String>();
emailAddresses.add("danas@contoso.com");
emailAddresses.add("fannyd@contoso.com");
getMailTipsPostRequestBody.setEmailAddresses(emailAddresses);
getMailTipsPostRequestBody.setMailTipsOptions(EnumSet.of(MailTipsType.AutomaticReplies, MailTipsType.MailboxFullStatus));
var result = graphClient.me().getMailTips().post(getMailTipsPostRequestBody);


```