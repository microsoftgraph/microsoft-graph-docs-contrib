---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationupdatenumber.UpdateNumberPostRequestBody updateNumberPostRequestBody = new com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationupdatenumber.UpdateNumberPostRequestBody();
updateNumberPostRequestBody.setTelephoneNumber("+12061234567");
updateNumberPostRequestBody.setNetworkSiteId("fff21455-0f84-4a6b-babd-0a9b46971a62");
graphClient.admin().teams().telephoneNumberManagement().numberAssignments().microsoftGraphTeamsAdministrationUpdateNumber().post(updateNumberPostRequestBody);


```