---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Detail = @{
		ContentType = "text"
		Content = "I am originally from Australia, but grew up in Moscow, Russia."
	}
	DisplayName = "About Me"
}

New-MgUserProfileNote -UserId $userId -BodyParameter $params

```