---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Mail

$params = @{
	Subject = "Annual review"
	Body = @{
		ContentType = "HTML"
		Content = "You should be proud!"
	}
	ToRecipients = @(
		@{
			EmailAddress = @{
				Address = "rufus@contoso.com"
			}
		}
	)
	Extensions = @(
		@{
			"@odata.type" = "microsoft.graph.openTypeExtension"
			ExtensionName = "Com.Contoso.Referral"
			CompanyName = "Wingtip Toys"
			ExpirationDate = "2015-12-30T11:00:00.000Z"
			DealValue = 
		}
	)
}

# A UPN can also be used as -UserId.
New-MgUserMessage -UserId $userId -BodyParameter $params

```