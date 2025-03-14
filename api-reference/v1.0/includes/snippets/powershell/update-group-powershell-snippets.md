---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	description = "Library Assist - ADC"
	displayName = "Library Assist - ADC"
	mailNickname = "library-help-adc"
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```