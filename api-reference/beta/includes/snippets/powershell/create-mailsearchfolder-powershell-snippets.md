---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "microsoft.graph.mailSearchFolder"
	displayName = "Weekly digests"
	includeNestedFolders = $true
	sourceFolderIds = @(
		"AQMkADYAAAIBDAAAAA=="
	)
	filterQuery = "contains(subject, 'weekly digest')"
}

# A UPN can also be used as -UserId.
New-MgUserMailFolderChildFolder -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```