---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Applications

$params = @{
	onPremisesPublishing = @{
		applicationType = "nonwebapp"
		isAccessibleViaZTNAClient = $true
	}
}

Update-MgBetaApplication -ApplicationId $applicationId -BodyParameter $params

```