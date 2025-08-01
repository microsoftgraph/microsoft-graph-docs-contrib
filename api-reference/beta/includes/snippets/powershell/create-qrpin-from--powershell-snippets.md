---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.qrPin"
	code = "09599786"
}

Update-MgBetaUserAuthenticationQrCodePinMethodPin -UserId $userId -BodyParameter $params

```