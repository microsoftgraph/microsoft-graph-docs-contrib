---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.policy.userassignments.microsoftgraphteamsadministrationassign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.beta.admin.teams.policy.userassignments.microsoftgraphteamsadministrationassign.AssignPostRequestBody();
LinkedList<com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment> value = new LinkedList<com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment>();
com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment teamsPolicyUserAssignment = new com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment();
teamsPolicyUserAssignment.setOdataType("#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment");
teamsPolicyUserAssignment.setUserId("5c802b19-3600-83f1-1767-7b9edc7f38ab");
teamsPolicyUserAssignment.setPolicyType("TeamsMeetingPolicy");
teamsPolicyUserAssignment.setPolicyId("VnMAaN3X2X1B9tEHx1CJWfC76PSaKEzA4NoUuqIMRUo");
value.add(teamsPolicyUserAssignment);
assignPostRequestBody.setValue(value);
graphClient.admin().teams().policy().userAssignments().microsoftGraphTeamsAdministrationAssign().post(assignPostRequestBody);


```