---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.PersonalContacts

$params = @{
	ParentFolderId = "parentFolderId-value"
	Birthday = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	FileAs = "fileAs-value"
	DisplayName = "displayName-value"
	GivenName = "givenName-value"
	Initials = "initials-value"
}

# A UPN can also be used as -UserId.
New-MgUserContactFolderContact -UserId $userId -ContactFolderId $contactFolderId -BodyParameter $params

```