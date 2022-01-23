---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	ClassifyAs = "focused"
	SenderEmailAddress = @{
		Name = "Samantha Booth"
		Address = "samanthab@adatum.onmicrosoft.com"
	}
}

New-MgUserInferenceClassificationOverride -UserId $userId -BodyParameter $params

```