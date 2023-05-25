---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	postponeUntilDateTime = [System.DateTime]::Parse("2023-02-01T02:53:00Z")
}

Invoke-MgPostponeDirectoryRecommendation -RecommendationId $recommendationId -BodyParameter $params

```