---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.PersonalContacts

$params = @{
	ParentFolderId = "parentFolderId-value"
	DisplayName = "displayName-value"
}

Update-MgUserContactFolder -UserId $userId -ContactFolderId $contactFolderId -BodyParameter $params

```