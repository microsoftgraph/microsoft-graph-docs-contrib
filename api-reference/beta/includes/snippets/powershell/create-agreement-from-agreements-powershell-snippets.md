---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

$params = @{
	DisplayName = "MSGraph Sample"
	IsViewingBeforeAcceptanceRequired = $true
	Files = @(
		@{
			FileName = "TOU.pdf"
			Language = "en"
			IsDefault = $true
			FileData = @{
				Data = [System.Text.Encoding]::ASCII.GetBytes("SGVsbG8gd29ybGQ=")
			}
		}
	)
}

New-MgIdentityGovernanceTermOfUseAgreement -BodyParameter $params

```