---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	assignedTo = ""
	comment = "control is under 'Third Party' exception"
	state = "Third Party"
	vendorInformation = @{
		provider = "SecureScore"
		providerVersion = $null
		subProvider = $null
		vendor = "Microsoft"
	}
}

Update-MgSecuritySecureScoreControlProfile -SecureScoreControlProfileId $secureScoreControlProfileId -BodyParameter $params

```