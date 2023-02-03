---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	RedundancyDetection = @{
		IsEnabled = $false
		SimilarityThreshold = 70
		MinWords = 12
		MaxWords = 400000
	}
	TopicModeling = @{
		IsEnabled = $false
		IgnoreNumbers = $false
		TopicCount = 50
		DynamicallyAdjustTopicCount = $false
	}
	Ocr = @{
		IsEnabled = $true
		MaxImageSize = 12000
	}
}

Update-MgComplianceEdiscoveryCaseSetting -CaseId $caseId -BodyParameter $params

```