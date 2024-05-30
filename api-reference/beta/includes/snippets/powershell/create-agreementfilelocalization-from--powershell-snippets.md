---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

$params = @{
	fileName = "Contoso ToU for guest users (French)"
	language = "fr-FR"
	isDefault = $false
	isMajorVersion = $false
	displayName = "Contoso ToU for guest users (French)"
	fileData = @{
		data = [System.Text.Encoding]::ASCII.GetBytes("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data")
	}
}

New-MgBetaIdentityGovernanceTermsOfUseAgreementFile -AgreementId $agreementId -BodyParameter $params

```