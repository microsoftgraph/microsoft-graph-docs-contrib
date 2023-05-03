---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	contentInfo = @{
		"@odata.type" = "#microsoft.graph.contentInfo"
		"format@odata.type" = "#microsoft.graph.contentFormat"
		format = "default"
		identifier = $null
		"state@odata.type" = "#microsoft.graph.contentState"
		state = "rest"
	}
	classificationResults = @(
		@{
			sensitiveTypeId = "cb353f78-2b72-4c3c-8827-92ebe4f69fdf"
			count = 4
			confidenceLevel = 75
		}
	)
}

Test-MgInformationProtectionPolicyLabelClassificationResult -BodyParameter $params

```