---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageResourceRequest
{
	RequestType = AccessPackageRequestType.AdminUpdate,
	Resource = new AccessPackageResource
	{
		OriginId = "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
		OriginSystem = "AadApplication",
		Attributes = new List<AccessPackageResourceAttribute>
		{
			new AccessPackageResourceAttribute
			{
				Destination = new AccessPackageUserDirectoryAttributeStore
				{
					OdataType = "microsoft.graph.accessPackageUserDirectoryAttributeStore",
				},
				Name = "officeLocation",
				Source = new AccessPackageResourceAttributeQuestion
				{
					OdataType = "#microsoft.graph.accessPackageResourceAttributeQuestion",
					Question = new AccessPackageTextInputQuestion
					{
						OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
						Sequence = 1,
						IsRequired = true,
						IsAnswerEditable = true,
						Text = "What office do you work at?",
						IsSingleLineQuestion = true,
						RegexPattern = "[a-zA-Z]+[a-zA-Z\s]*",
					},
				},
			},
			new AccessPackageResourceAttribute
			{
				Destination = new AccessPackageUserDirectoryAttributeStore
				{
					OdataType = "microsoft.graph.accessPackageUserDirectoryAttributeStore",
				},
				Name = "extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter",
				Source = new AccessPackageResourceAttributeQuestion
				{
					OdataType = "#microsoft.graph.accessPackageResourceAttributeQuestion",
					Question = new AccessPackageTextInputQuestion
					{
						OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
						IsRequired = false,
						Text = "What is your cost center number?",
						Sequence = 0,
						IsSingleLineQuestion = true,
						RegexPattern = "[0-9]*",
					},
				},
			},
		},
	},
	Catalog = new AccessPackageCatalog
	{
		Id = "beedadfe-01d5-4025-910b-84abb9369997",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ResourceRequests.PostAsync(requestBody);


```