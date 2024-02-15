---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	"@odata.type" = "#microsoft.graph.openTypeExtension"
	extensionName = "com.contoso.socialSettings"
	skypeId = "skypeId.AdeleV"
	linkedInProfile = "www.linkedin.com/in/testlinkedinprofile"
	xboxGamerTag = "AwesomeAdele"
	id = "com.contoso.socialSettings"
}

New-MgUserExtension -UserId $userId -BodyParameter $params

```