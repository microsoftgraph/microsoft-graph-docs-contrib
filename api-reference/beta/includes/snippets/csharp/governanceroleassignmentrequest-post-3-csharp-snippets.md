---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new GovernanceRoleAssignmentRequest
{
	RoleDefinitionId = "bc75b4e6-7403-4243-bf2f-d1f6990be122",
	ResourceId = "fb016e3a-c3ed-4d9d-96b6-a54cd4f0b735",
	SubjectId = "918e54be-12c4-4f4c-a6d3-2ee0e3661c51",
	AssignmentState = "Active",
	Type = "UserRemove",
	Reason = "Deactivate the role",
	LinkedEligibleRoleAssignmentId = "cb8a533e-02d5-42ad-8499-916b1e4822ec",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.PrivilegedAccess["{privilegedAccess-id}"].RoleAssignmentRequests.PostAsync(requestBody);


```