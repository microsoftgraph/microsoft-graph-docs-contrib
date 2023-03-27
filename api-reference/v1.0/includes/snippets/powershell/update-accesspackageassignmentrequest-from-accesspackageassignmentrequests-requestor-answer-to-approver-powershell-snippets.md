---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.accessPackageAssignmentRequest"
	Id = "7a6ab703-0780-4b37-8445-81f679b2d75c"
	RequestType = "adminUpdate"
	Answers = @(
		@{
			"@odata.type" = "#microsoft.graph.accessPackageAnswerString"
			Value = "UpdatedAnswerValue"
			AnsweredQuestion = @{
				"@odata.type" = "#microsoft.graph.accessPackageMultipleChoiceQuestion"
				Id = "8fe745e7-80b2-490d-bd22-4e708c77288c"
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.accessPackageAnswerString"
			Value = "My updated answer."
			DisplayValue = "This is my updated answer to the question."
			AnsweredQuestion = @{
				"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
				Id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
			}
		}
	)
	Assignment = @{
		Id = "44c741c1-2cf4-40db-83b6-e0112f8e5a83"
	}
}

New-MgEntitlementManagementAssignmentRequest -BodyParameter $params

```