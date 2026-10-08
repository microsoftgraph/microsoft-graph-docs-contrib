---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "Dynamic approver policy",
	Description = "Dynamic approver policy",
	Questions = new List<AccessPackageQuestion>
	{
	},
	RequestorSettings = new AccessPackageAssignmentRequestorSettings
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"scopeType" , "AllExistingDirectorySubjects"
			},
			{
				"acceptRequests" , true
			},
			{
				"allowedRequestors" , new List<object>
				{
				}
			},
		},
	},
	RequestApprovalSettings = new AccessPackageAssignmentApprovalSettings
	{
		IsRequestorJustificationRequired = true,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"isApprovalRequired" , true
			},
			{
				"isApprovalRequiredForExtension" , false
			},
			{
				"approvalMode" , "SingleStage"
			},
			{
				"approvalStages" , new List<object>
				{
					new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"@odata.type", new UntypedString("#microsoft.graph.accessPackageDynamicApprovalStage")
						},
						{
							"customExtension", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension")
								},
								{
									"id", new UntypedString("52036a43-10b5-444d-a1a2-d4f240420239")
								},
							})
						},
					}),
				}
			},
		},
	},
	CustomExtensionStageSettings = new List<CustomExtensionStageSetting>
	{
		new CustomExtensionStageSetting
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			CustomExtension = new AccessPackageAssignmentRequestWorkflowExtension
			{
				OdataType = "#microsoft.graph.accessPackageAssignmentRequestWorkflowExtension",
				Id = "52036a43-10b5-444d-a1a2-d4f240420239",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.context" , "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/$entity"
		},
		{
			"canExtend" , false
		},
		{
			"durationInDays" , 0
		},
		{
			"expirationDateTime" , null
		},
		{
			"accessPackageId" , "fc29cdca-57f6-47e3-b20c-3fa18e4826ac"
		},
		{
			"accessReviewSettings" , null
		},
		{
			"accessPackageNotificationSettings" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"isAssignmentNotificationDisabled", new UntypedBoolean(false)
				},
			})
		},
		{
			"verifiableCredentialSettings" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"credentialTypes", new UntypedArray(new List<UntypedNode>
					{
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies.PostAsync(requestBody);


```