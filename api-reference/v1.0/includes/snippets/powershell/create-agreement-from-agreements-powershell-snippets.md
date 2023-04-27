---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	displayName = "Contoso ToU for guest users"
	isViewingBeforeAcceptanceRequired = $true
	files = @(
		@{
			fileName = "TOU.pdf"
			language = "en"
			isDefault = $true
			fileData = @{
				data = [System.Text.Encoding]::ASCII.GetBytes("SGVsbG8gd29ybGQ=//truncated-binary")
			}
		}
	)
}

New-MgIdentityGovernanceTermOfUseAgreement -BodyParameter $params

```