---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Applications

$params = @{
	RequiredResourceAccess = @(
		@{
			ResourceAppId = "00000002-0000-0000-c000-000000000000"
			ResourceAccess = @(
				@{
					Id = "311a71cc-e848-46a1-bdf8-97ff7156d8e6"
					Type = "Scope"
				}
				@{
					Id = "3afa6a7d-9b1a-42eb-948e-1650a849e176"
					Type = "Role"
				}
			)
		}
	)
}

Update-MgApplication -ApplicationId $applicationId -BodyParameter $params

```