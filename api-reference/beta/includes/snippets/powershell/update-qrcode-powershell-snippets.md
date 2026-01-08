---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.qrCode"
	expireDateTime = [System.DateTime]::Parse("2025-12-01T12:00:00Z")
}

# A UPN can also be used as -UserId.
Update-MgBetaUserAuthenticationQrCodePinMethodStandardQrCode -UserId $userId -BodyParameter $params

```