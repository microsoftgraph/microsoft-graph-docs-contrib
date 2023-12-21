---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.ediscoveryCaseSettings"
	redundancyDetection = @{
		"@odata.type" = "microsoft.graph.security.redundancyDetectionSettings"
	}
	topicModeling = @{
		"@odata.type" = "microsoft.graph.security.topicModelingSettings"
	}
	ocr = @{
		"@odata.type" = "microsoft.graph.security.ocrSettings"
	}
}

Update-MgSecurityCaseEdiscoveryCaseSetting -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```