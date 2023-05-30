---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	sourceCollection = @{
		id = "1a9b4145d8f84e39bc45a7f68c5c5119"
	}
	additionalData = "linkedFiles"
}

Add-MgComplianceEdiscoveryCaseReviewSetToReviewSet -CaseId $caseId -ReviewSetId $reviewSetId -BodyParameter $params

```