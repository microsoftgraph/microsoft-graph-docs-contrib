---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPatent itemPatent = new ItemPatent();
itemPatent.setNumber("USPTO-3954432633");
itemPatent.setWebUrl("https://patents.gov/3954432633");
ItemPatent result = graphClient.users().byUserId("{user-id}").profile().patents().byItemPatentId("{itemPatent-id}").patch(itemPatent);


```