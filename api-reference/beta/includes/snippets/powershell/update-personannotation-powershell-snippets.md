---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	allowedAudiences = "organization"
}

Update-MgUserProfileNote -UserId $userId -PersonAnnotationId $personAnnotationId -BodyParameter $params

```