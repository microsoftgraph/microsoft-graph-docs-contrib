---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.teamwork.sections.reorder.ReorderPostRequestBody reorderPostRequestBody = new com.microsoft.graph.beta.users.item.teamwork.sections.reorder.ReorderPostRequestBody();
LinkedList<String> sectionsOrder = new LinkedList<String>();
sectionsOrder.add("ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews");
sectionsOrder.add("a1b2c3d4-e5f6-7890-abcd-ef1234567890");
sectionsOrder.add("b2c3d4e5-f6a7-8901-bcde-f12345678901");
reorderPostRequestBody.setSectionsOrder(sectionsOrder);
var result = graphClient.users().byUserId("{user-id}").teamwork().sections().reorder().post(reorderPostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"1742515200\"");
});


```