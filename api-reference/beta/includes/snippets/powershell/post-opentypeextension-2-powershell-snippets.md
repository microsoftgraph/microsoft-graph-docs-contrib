---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	"@odata.type" = "microsoft.graph.openTypeExtension"
	extensionName = "Com.Contoso.Referral"
	companyName = "Wingtip Toys"
	dealValue = 
	expirationDate = "2015-12-03T10:00:00.000Z"
}

# A UPN can also be used as -UserId.
New-MgUserMessageExtension -UserId $userId -MessageId $messageId -BodyParameter $params

```