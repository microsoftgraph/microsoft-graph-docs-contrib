---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.ConfigurationManagement

$params = @{
	displayName = "Demo Monitor Name Change"
}

Update-MgBetaAdminConfigurationManagementConfigurationMonitor -ConfigurationMonitorId $configurationMonitorId -BodyParameter $params

```