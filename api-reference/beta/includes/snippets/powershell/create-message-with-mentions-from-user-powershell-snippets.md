---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Mail

$params = @{
	subject = "Party planning"
	toRecipients = @(
		@{
			emailAddress = @{
				name = "Samantha Booth"
				address = "samanthab@contoso.onmicrosoft.com"
			}
		}
	)
	mentions = @(
		@{
			mentioned = @{
				name = "Dana Swope"
				address = "danas@contoso.onmicrosoft.com"
			}
		}
	)
}

# A UPN can also be used as -UserId.
New-MgBetaUserMessage -UserId $userId -BodyParameter $params

```