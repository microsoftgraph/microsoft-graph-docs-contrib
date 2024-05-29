---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	storageLocation = "MyStorageAccount"
}

Export-MgBetaDirectoryInboundSharedUserProfilePersonalData -InboundSharedUserProfileUserId $inboundSharedUserProfileUserId -BodyParameter $params

```