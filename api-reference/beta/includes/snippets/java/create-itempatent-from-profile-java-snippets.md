---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPatent itemPatent = new ItemPatent();
itemPatent.setDescription("Calculating the intent of a user to purchase an item based on the amount of time they hover their mouse over a given pixel.");
itemPatent.setDisplayName("Inferring User Intent through browsing behaviors");
itemPatent.setIsPending(true);
itemPatent.setNumber("USPTO-3954432633");
itemPatent.setWebUrl("https://patents.gov/3954432633");
ItemPatent result = graphClient.me().profile().patents().post(itemPatent);


```