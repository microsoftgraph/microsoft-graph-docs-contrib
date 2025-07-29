---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	newPassword = "Cuyo5459"
}

Reset-MgBetaUserAuthenticationMethodPassword -UserId $userId -AuthenticationMethodId $authenticationMethodId -BodyParameter $params

```