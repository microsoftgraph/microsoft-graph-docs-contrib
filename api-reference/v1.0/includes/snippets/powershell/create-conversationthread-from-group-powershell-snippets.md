---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Topic = "New Conversation Thread Topic"
	Posts = @(
		@{
			Body = @{
				ContentType = "html"
				Content = "this is body content"
			}
			NewParticipants = @(
				@{
					EmailAddress = @{
						Name = "Alex Darrow"
						Address = "alexd@contoso.com"
					}
				}
			)
		}
	)
}

New-MgGroupThread -GroupId $groupId -BodyParameter $params

```