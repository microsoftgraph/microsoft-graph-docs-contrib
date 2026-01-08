---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teamwork.determineifinteractionisallowed.DetermineIfInteractionIsAllowedPostRequestBody determineIfInteractionIsAllowedPostRequestBody = new com.microsoft.graph.beta.teamwork.determineifinteractionisallowed.DetermineIfInteractionIsAllowedPostRequestBody();
LinkedList<Identity> users = new LinkedList<Identity>();
TeamworkUserIdentity identity = new TeamworkUserIdentity();
identity.setOdataType("microsoft.graph.teamworkUserIdentity");
identity.setUserPrincipalName("maia@contoso.com");
users.add(identity);
determineIfInteractionIsAllowedPostRequestBody.setUsers(users);
determineIfInteractionIsAllowedPostRequestBody.setInteractionType(TeamworkInteractionType.CreateChat);
var result = graphClient.teamwork().determineIfInteractionIsAllowed().post(determineIfInteractionIsAllowedPostRequestBody);


```