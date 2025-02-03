---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ConversationMemberCollectionResponse result = graphClient.teams().byTeamId("{team-id}").members().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "(microsoft.graph.aadUserConversationMember/userId eq '73761f06-2ac9-469c-9f10-279a8cc267f9')";
});


```