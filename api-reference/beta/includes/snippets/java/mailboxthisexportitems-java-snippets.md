---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.exchange.mailboxes.item.exportitems.ExportItemsPostRequestBody exportItemsPostRequestBody = new com.microsoft.graph.beta.admin.exchange.mailboxes.item.exportitems.ExportItemsPostRequestBody();
LinkedList<String> itemIds = new LinkedList<String>();
itemIds.add("EDSVrdi3lRAADmpnf1AAA=");
itemIds.add("EDSVrdi3lRAAD45b7RAAA=");
exportItemsPostRequestBody.setItemIds(itemIds);
var result = graphClient.admin().exchange().mailboxes().byMailboxId("{mailbox-id}").exportItems().post(exportItemsPostRequestBody);


```