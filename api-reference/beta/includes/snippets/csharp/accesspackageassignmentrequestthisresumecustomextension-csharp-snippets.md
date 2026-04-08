---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Resume;
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new ResumePostRequestBody
{
	Source = "Contoso.CustoEXT",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	Data = new CustomExtensionData
	{
		OdataType = "microsoft.graph.microsoft.graph.assignmentRequestApprovalStageCallbackData",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"approvalStage" , new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"durationBeforeAutomaticDenial", new UntypedString("P2D")
					},
					{
						"escalationApprovers", new UntypedArray(new List<UntypedNode>
						{
						})
					},
					{
						"fallbackEscalationApprovers", new UntypedArray(new List<UntypedNode>
						{
						})
					},
					{
						"fallbackPrimaryApprovers", new UntypedArray(new List<UntypedNode>
						{
						})
					},
					{
						"isApproverJustificationRequired", new UntypedBoolean(false)
					},
					{
						"isEscalationEnabled", new UntypedBoolean(false)
					},
					{
						"primaryApprovers", new UntypedArray(new List<UntypedNode>
						{
							new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@@odata.type", new UntypedString("#microsoft.graph.singleUser")
								},
								{
									"description", new UntypedString("Primary approver of access package assignment.")
								},
								{
									"id", new UntypedString("")
								},
								{
									"isBackup", new UntypedBoolean(false)
								},
							}),
						})
					},
				})
			},
			{
				"customExtensionStageInstanceDetail" , "A approval stage from Logic Apps"
			},
			{
				"customExtensionStageInstanceId" , "@{triggerBody()?['CustomExtensionStageInstanceId']}"
			},
			{
				"stage" , "assignmentRequestDeterminingApprovalRequirements"
			},
		},
	},
	Source = "LogicApps",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Resume.PostAsync(requestBody);


```