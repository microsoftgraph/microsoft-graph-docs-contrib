---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.PersonalContacts

$params = @{
	parentFolderId = "parentFolderId-value"
	displayName = "displayName-value"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserContactFolder -UserId $userId -ContactFolderId $contactFolderId -BodyParameter $params

```