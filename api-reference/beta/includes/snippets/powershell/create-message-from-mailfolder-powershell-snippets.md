---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	receivedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	sentDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	hasAttachments = $true
	subject = "subject-value"
	body = @{
		contentType = ""
		content = "content-value"
	}
	bodyPreview = "bodyPreview-value"
}

# A UPN can also be used as -UserId.
New-MgBetaUserMailFolderMessage -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```