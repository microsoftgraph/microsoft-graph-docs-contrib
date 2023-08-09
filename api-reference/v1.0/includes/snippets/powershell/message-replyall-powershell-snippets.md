---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	comment = "comment-value"
}

# A UPN can also be used as -UserId.
Invoke-MgReplyAllUserMessage -UserId $userId -MessageId $messageId -BodyParameter $params

```