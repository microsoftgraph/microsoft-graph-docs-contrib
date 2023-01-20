---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Search

$params = @{
	Requests = @(
		@{
			EntityTypes = @(
				"chatMessage"
			)
			Query = @{
				QueryString = "contoso from:bob to:alice sent>2022-07-14"
			}
			From = 0
			Size = 15
			EnableTopResults = $true
		}
	)
}

Invoke-MgQuerySearch -BodyParameter $params

```