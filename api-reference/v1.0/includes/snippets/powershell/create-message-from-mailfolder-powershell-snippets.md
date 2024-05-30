---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	receivedDateTime = [System.DateTime]::Parse("datetime-value")
	sentDateTime = [System.DateTime]::Parse("datetime-value")
	hasAttachments = $true
	subject = "subject-value"
	body = @{
		contentType = ""
		content = "content-value"
	}
	bodyPreview = "bodyPreview-value"
}

# A UPN can also be used as -UserId.
New-MgUserMailFolderMessage -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```