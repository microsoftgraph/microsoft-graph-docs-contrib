---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	delegateMeetingMessageDeliveryOptions = "sendToDelegateAndPrincipal"
}

Update-MgBetaUserMailboxSetting -UserId $userId -BodyParameter $params

```