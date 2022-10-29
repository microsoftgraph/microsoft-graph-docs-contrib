---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.fileAssessmentRequest"
	ExpectedAssessment = "block"
	Category = "malware"
	FileName = "test.txt"
	ContentData = "VGhpcyBpcyBhIHRlc3QgZmlsZQ=="
}

New-MgInformationProtectionThreatAssessmentRequest -BodyParameter $params

```