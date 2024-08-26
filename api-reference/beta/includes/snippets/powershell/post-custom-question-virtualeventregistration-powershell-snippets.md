---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.virtualEventRegistrationCustomQuestion"
	displayName = "What's your job position?"
	answerInputType = "multiChoice"
	answerChoices = @(
	"Software Engineer"
"Engineer Manager"
"Product Manager"
)
}

New-MgBetaVirtualEventWebinarRegistrationConfigurationQuestion -VirtualEventWebinarId $virtualEventWebinarId -BodyParameter $params

```