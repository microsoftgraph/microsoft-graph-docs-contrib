---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	location = @{
		displayName = "Conf Room 2"
	}
}

Update-MgGroupCalendarEvent -GroupId $groupId -EventId $eventId -BodyParameter $params

```