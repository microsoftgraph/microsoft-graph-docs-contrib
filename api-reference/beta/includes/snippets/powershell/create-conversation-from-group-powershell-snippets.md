---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Topic = "New head count"
	Threads = @(
		@{
			Posts = @(
				@{
					Body = @{
						ContentType = "html"
						Content = "The confirmation will come by the end of the week."
					}
					NewParticipants = @(
						@{
							EmailAddress = @{
								Name = "Adele Vance"
								Address = "AdeleV@contoso.onmicrosoft.com"
							}
						}
					)
				}
			)
		}
	)
}

New-MgGroupConversation -GroupId $groupId -BodyParameter $params

```