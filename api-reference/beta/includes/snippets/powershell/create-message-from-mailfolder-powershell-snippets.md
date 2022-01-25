---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	ReceivedDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	SentDateTime = [System.DateTime]::Parse("2016-10-19T10:37:00Z")
	HasAttachments = $true
	Subject = "subject-value"
	Body = @{
		ContentType = ""
		Content = "content-value"
	}
	BodyPreview = "bodyPreview-value"
}

New-MgUserMailFolderMessage -UserId $userId -MailFolderId $mailFolderId -BodyParameter $params

```