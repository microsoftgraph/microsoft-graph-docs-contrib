---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teamwork.determineifinteractionisallowed.DetermineIfInteractionIsAllowedPostRequestBody determineIfInteractionIsAllowedPostRequestBody = new com.microsoft.graph.beta.teamwork.determineifinteractionisallowed.DetermineIfInteractionIsAllowedPostRequestBody();
LinkedList<Identity> users = new LinkedList<Identity>();
EmailIdentity identity = new EmailIdentity();
identity.setOdataType("microsoft.graph.emailIdentity");
identity.setEmail("LauraW@foo.com");
users.add(identity);
TeamworkUserIdentity identity1 = new TeamworkUserIdentity();
identity1.setOdataType("microsoft.graph.teamworkUserIdentity");
identity1.setUserPrincipalName("MaiaR@foobar.com");
users.add(identity1);
TeamworkUserIdentity identity2 = new TeamworkUserIdentity();
identity2.setOdataType("microsoft.graph.teamworkUserIdentity");
identity2.setId("bd6a223f-59b5-46dd-90bc-0ddebaf3da5a");
users.add(identity2);
determineIfInteractionIsAllowedPostRequestBody.setUsers(users);
determineIfInteractionIsAllowedPostRequestBody.setInteractionType(TeamworkInteractionType.CreateChat);
var result = graphClient.teamwork().determineIfInteractionIsAllowed().post(determineIfInteractionIsAllowedPostRequestBody);


```