---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Topic = "Does anyone have a second?"
	Threads = @(
		@{
			Posts = @(
				@{
					Body = @{
						ContentType = "HTML"
						Content = "This is urgent!"
					}
					Extensions = @(
						@{
							"@odata.type" = "microsoft.graph.openTypeExtension"
							ExtensionName = "Com.Contoso.Benefits"
							CompanyName = "Contoso"
							ExpirationDate = "2016-08-03T11:00:00.000Z"
							TopPicks = @(
								"Employees only"
								"Add spouse or guest"
								"Add family"
							)
						}
					)
				}
			)
		}
	)
}

New-MgGroupConversation -GroupId $groupId -BodyParameter $params

```