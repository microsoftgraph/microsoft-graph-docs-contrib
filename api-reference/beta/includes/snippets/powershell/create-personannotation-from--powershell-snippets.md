---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	detail = @{
		contentType = "text"
		content = "I am originally from Australia, but grew up in Moscow, Russia."
	}
	displayName = "About Me"
}

# A UPN can also be used as -UserId.
New-MgBetaUserProfileNote -UserId $userId -BodyParameter $params

```