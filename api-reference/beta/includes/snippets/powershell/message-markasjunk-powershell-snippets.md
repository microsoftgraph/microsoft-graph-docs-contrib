---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	moveToJunk = $true
}

# A UPN can also be used as -UserId.
Invoke-MgBetaMarkUserMessageAsJunk -UserId $userId -MessageId $messageId -BodyParameter $params

```