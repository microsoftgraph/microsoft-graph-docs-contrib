---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	"@odata.type" = "#microsoft.graph.accessPackageAssignmentRequest"
	RequestType = "userAdd"
	Answers = @(
		@{
			"@odata.type" = "#microsoft.graph.accessPackageAnswerString"
			DisplayValue = "This is the answer to a multiple choice question"
			Value = "MultipleChoiceAnswerValue"
			AnsweredQuestion = @{
				"@odata.type" = "#microsoft.graph.accessPackageMultipleChoiceQuestion"
				Id = "8fe745e7-80b2-490d-bd22-4e708c77288c"
			}
		}
		@{
			"@odata.type" = "#microsoft.graph.accessPackageAnswerString"
			Value = "This is my answer to a text input question."
			DisplayValue = "This is my answer."
			AnsweredQuestion = @{
				"@odata.type" = "#microsoft.graph.accessPackageTextInputQuestion"
				Id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6"
			}
		}
	)
	Assignment = @{
		AccessPackageId = "977c7ff4-ef8f-4910-9d31-49048ddf3120"
	}
}

New-MgEntitlementManagementAssignmentRequest -BodyParameter $params

```