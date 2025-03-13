---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.context" = "https://graph.microsoft.com/beta/$metadata#users('3fbd929d-8c56-4462-851e-0eb9a7b3a2a5')/extensions/$entity"
	"@odata.type" = "#microsoft.graph.openTypeExtension"
	xboxGamerTag = "FierceAdele"
	linkedInProfile = "www.linkedin.com/in/testlinkedinprofile"
	id = "com.contoso.socialSettings"
}

Get-MgUserExtension -UserId $userId -ExtensionId $extensionId -BodyParameter $params

```