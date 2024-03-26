---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	isEmailPasswordAuthenticationEnabled = $false
	isUserNameAuthenticationEnabled = $true
	isPhoneOneTimePasswordAuthenticationEnabled = $true
}

Update-MgBetaPolicyB2CAuthenticationMethodPolicy -BodyParameter $params

```