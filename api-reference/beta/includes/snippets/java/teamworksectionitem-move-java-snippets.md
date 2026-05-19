---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.teamwork.sections.item.items.item.move.MovePostRequestBody movePostRequestBody = new com.microsoft.graph.beta.users.item.teamwork.sections.item.items.item.move.MovePostRequestBody();
movePostRequestBody.setTargetSectionId("c3d4e5f6-a7b8-9012-cdef-123456789012");
var result = graphClient.users().byUserId("{user-id}").teamwork().sections().byTeamworkSectionId("{teamworkSection-id}").items().byTeamworkSectionItemId("{teamworkSectionItem-id}").move().post(movePostRequestBody, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "\"1742515200\"");
});


```