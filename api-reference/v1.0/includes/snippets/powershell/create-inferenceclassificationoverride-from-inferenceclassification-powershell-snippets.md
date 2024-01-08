---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	classifyAs = "focused"
	senderEmailAddress = @{
		name = "Samantha Booth"
		address = "samanthab@adatum.onmicrosoft.com"
	}
}

# A UPN can also be used as -UserId.
New-MgUserInferenceClassificationOverride -UserId $userId -BodyParameter $params

```