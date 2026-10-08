---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationassignnumber.AssignNumberPostRequestBody assignNumberPostRequestBody = new com.microsoft.graph.beta.admin.teams.telephonenumbermanagement.numberassignments.microsoftgraphteamsadministrationassignnumber.AssignNumberPostRequestBody();
assignNumberPostRequestBody.setTelephoneNumber("12061234567");
assignNumberPostRequestBody.setAssignmentTargetId("94ec379d-30a2-4cdb-a377-75e42f7a61e5");
assignNumberPostRequestBody.setNumberType(com.microsoft.graph.beta.models.teamsadministration.NumberType.DirectRouting);
assignNumberPostRequestBody.setAssignmentCategory(com.microsoft.graph.beta.models.teamsadministration.AssignmentCategory.Primary);
graphClient.admin().teams().telephoneNumberManagement().numberAssignments().microsoftGraphTeamsAdministrationAssignNumber().post(assignNumberPostRequestBody);


```