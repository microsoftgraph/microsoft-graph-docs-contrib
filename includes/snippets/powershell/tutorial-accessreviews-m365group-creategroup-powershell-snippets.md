---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Feelgood Marketing Campaign with external partners and vendors."
	DisplayName = "Feelgood Marketing Campaign"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $true
	MailNickname = "FeelGoodCampaign"
	SecurityEnabled = $true
	"Owners@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7"
	)
	"Members@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20"
	)
}

New-MgGroup -BodyParameter $params

```