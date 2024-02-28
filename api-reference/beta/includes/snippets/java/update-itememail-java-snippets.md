---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemEmail itemEmail = new ItemEmail();
itemEmail.setDisplayName("Business Email");
itemEmail.setType(EmailType.Work);
ItemEmail result = graphClient.users().byUserId("{user-id}").profile().emails().byItemEmailId("{itemEmail-id}").patch(itemEmail);


```