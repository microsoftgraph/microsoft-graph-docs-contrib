---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	newPassword = "Cuyo5459"
}

Reset-MgUserAuthenticationMethodPassword -UserId $userId -AuthenticationMethodId $authenticationMethodId -BodyParameter $params

```