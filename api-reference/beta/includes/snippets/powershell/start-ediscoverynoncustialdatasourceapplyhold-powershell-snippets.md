---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Ids = @(
		"39333641443238353535383731453339"
		"46333131344239353834433430454335"
	)
}

Add-MgSecurityCaseEdiscoveryCaseNoncustodialDataSourceHold -EdiscoveryCaseId $ediscoveryCaseId -BodyParameter $params

```