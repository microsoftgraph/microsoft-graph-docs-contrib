---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	accountEnabled = $true
	displayName = "Adele Vance"
	mailNickname = "AdeleV"
	userPrincipalName = "AdeleV@contoso.com"
	passwordProfile = @{
		forceChangePasswordNextSignIn = $false
		password = "xWwvJ]6NMw+bWH-d"
	}
	extkmpdyld2_graphLearnCourses = @{
		courseId = 
		courseName = "Explore Microsoft Graph"
		courseType = "Online"
	}
}

New-MgBetaUser -BodyParameter $params

```