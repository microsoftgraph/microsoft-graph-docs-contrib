---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationunassignnumber.UnassignNumberPostRequestBody unassignNumberPostRequestBody = new com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationunassignnumber.UnassignNumberPostRequestBody();
unassignNumberPostRequestBody.setTelephoneNumber("12061234567");
unassignNumberPostRequestBody.setNumberType(com.microsoft.graph.beta.models.teamsadministration.NumberType.DirectRouting);
graphClient.admin().teams().telephoneNumberManagement().numberAssignments().microsoftGraphTeamsAdministrationUnassignNumber().post(unassignNumberPostRequestBody);


```