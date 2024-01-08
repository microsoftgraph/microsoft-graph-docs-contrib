---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	allowedAudiences = "organization"
}

Update-MgBetaUserProfileNote -UserId $userId -PersonAnnotationId $personAnnotationId -BodyParameter $params

```