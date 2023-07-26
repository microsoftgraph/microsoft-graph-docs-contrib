---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

$params = @{
	displayName = "Family"
}

# A UPN can also be used as -UserId.
New-MgBetaUserContactFolderChildFolder -UserId $userId -ContactFolderId $contactFolderId -BodyParameter $params

```