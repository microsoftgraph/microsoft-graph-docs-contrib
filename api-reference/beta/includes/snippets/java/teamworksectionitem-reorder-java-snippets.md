---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.teamwork.sections.item.items.reorder.ReorderPostRequestBody reorderPostRequestBody = new com.microsoft.graph.beta.users.item.teamwork.sections.item.items.reorder.ReorderPostRequestBody();
LinkedList<String> itemsOrder = new LinkedList<String>();
itemsOrder.add("19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2");
itemsOrder.add("19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces");
itemsOrder.add("19:94961b6eacc04e2392e34709c66cb610@thread.v2");
reorderPostRequestBody.setItemsOrder(itemsOrder);
var result = graphClient.users().byUserId("{user-id}").teamwork().sections().byTeamworkSectionId("{teamworkSection-id}").items().reorder().post(reorderPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"1742515200\"");
});


```