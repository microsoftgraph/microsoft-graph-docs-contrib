---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationupdatenumber.UpdateNumberPostRequestBody updateNumberPostRequestBody = new com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationupdatenumber.UpdateNumberPostRequestBody();
updateNumberPostRequestBody.setTelephoneNumber("+12061234567");
updateNumberPostRequestBody.setLocationId("");
graphClient.admin().teams().telephoneNumberManagement().numberAssignments().microsoftGraphTeamsAdministrationUpdateNumber().post(updateNumberPostRequestBody);


```