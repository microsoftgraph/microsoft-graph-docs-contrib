---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ConfigurationManagement

$params = @{
	displayName = "Demo Monitor Name Change"
}

Update-MgAdminConfigurationManagementConfigurationMonitor -ConfigurationMonitorId $configurationMonitorId -BodyParameter $params

```