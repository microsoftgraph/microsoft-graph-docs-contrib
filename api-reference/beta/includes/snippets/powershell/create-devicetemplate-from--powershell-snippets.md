---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	mutualTlsOauthConfigurationId = "00001111-aaaa-2222-bbbb-3333cccc4444"
	mutualTlsOauthConfigurationTenantId = "00001111-aaaa-2222-bbbb-3333cccc4445"
	deviceAuthority = "Lakeshore Retail"
	manufacturer = "Tailwind Traders"
	model = "DeepFreezerModelAB"
	operatingSystem = "WindowsIoT"
}

New-MgBetaDirectoryTemplateDeviceTemplate -BodyParameter $params

```