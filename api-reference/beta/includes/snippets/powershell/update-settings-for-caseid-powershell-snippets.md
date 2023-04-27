---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	redundancyDetection = @{
		isEnabled = $false
		similarityThreshold = 70
		minWords = 12
		maxWords = 400000
	}
	topicModeling = @{
		isEnabled = $false
		ignoreNumbers = $false
		topicCount = 50
		dynamicallyAdjustTopicCount = $false
	}
	ocr = @{
		isEnabled = $true
		maxImageSize = 12000
	}
}

Update-MgComplianceEdiscoveryCaseSetting -CaseId $caseId -BodyParameter $params

```