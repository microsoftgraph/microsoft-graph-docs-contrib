---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	settings = @{
		description = "dc1 settings new description"
		domainControllerDnsNames = @(
		"DC1.domain1.test.local"
	)
	isDelayedDeploymentEnabled = $false
}
}

Update-MgSecurityIdentitySensor -SensorId $sensorId -BodyParameter $params

```