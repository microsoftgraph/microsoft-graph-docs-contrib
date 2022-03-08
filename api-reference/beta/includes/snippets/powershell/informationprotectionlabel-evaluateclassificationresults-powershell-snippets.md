---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	ContentInfo = @{
		"@odata.type" = "#microsoft.graph.contentInfo"
		"Format@odata.type" = "#microsoft.graph.contentFormat"
		Format = "default"
		Identifier = $null
		"State@odata.type" = "#microsoft.graph.contentState"
		State = "rest"
	}
	ClassificationResults = @(
		@{
			SensitiveTypeId = "cb353f78-2b72-4c3c-8827-92ebe4f69fdf"
			Count = 4
			ConfidenceLevel = 75
		}
	)
}

Test-MgInformationProtectionPolicyLabelClassificationResult -BodyParameter $params

```