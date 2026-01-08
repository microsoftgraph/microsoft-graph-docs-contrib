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
identity.setId("59b5bc69-ca73-4ffd-a2e0-88a79115d13b");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("tenantId", "b11186db-6149-4b3d-95ad-23c9e1bf6853");
identity.setAdditionalData(additionalData);
users.add(identity);
determineIfInteractionIsAllowedPostRequestBody.setUsers(users);
determineIfInteractionIsAllowedPostRequestBody.setInteractionType(TeamworkInteractionType.CreateChat);
var result = graphClient.teamwork().determineIfInteractionIsAllowed().post(determineIfInteractionIsAllowedPostRequestBody);


```