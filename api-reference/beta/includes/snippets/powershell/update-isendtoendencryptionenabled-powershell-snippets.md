---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.CloudCommunications

$params = @{
	isEndToEndEncryptionEnabled = $true
}

# A UPN can also be used as -UserId.
Update-MgBetaUserOnlineMeeting -UserId $userId -OnlineMeetingId $onlineMeetingId -BodyParameter $params

```