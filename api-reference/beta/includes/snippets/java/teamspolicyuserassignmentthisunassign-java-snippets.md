---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.admin.teams.policy.userassignments.microsoftgraphteamsadministrationunassign.UnassignPostRequestBody unassignPostRequestBody = new com.microsoft.graph.beta.admin.teams.policy.userassignments.microsoftgraphteamsadministrationunassign.UnassignPostRequestBody();
LinkedList<com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment> value = new LinkedList<com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment>();
com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment teamsPolicyUserAssignment = new com.microsoft.graph.beta.models.teamsadministration.TeamsPolicyUserAssignment();
teamsPolicyUserAssignment.setOdataType("#microsoft.graph.teamsAdministration.teamsPolicyUserAssignment");
teamsPolicyUserAssignment.setUserId("5c802b19-3600-83f1-1767-7b9edc7f38ab");
teamsPolicyUserAssignment.setPolicyType("TeamsMeetingPolicy");
value.add(teamsPolicyUserAssignment);
unassignPostRequestBody.setValue(value);
graphClient.admin().teams().policy().userAssignments().microsoftGraphTeamsAdministrationUnassign().post(unassignPostRequestBody);


```