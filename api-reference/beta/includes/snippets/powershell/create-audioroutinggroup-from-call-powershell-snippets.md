---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.CloudCommunications

$params = @{
	Id = "oneToOne"
	RoutingMode = "oneToOne"
	Sources = @(
		"632899f8-2ea1-4604-8413-27bd2892079f"
	)
	Receivers = @(
		"550fae72-d251-43ec-868c-373732c2704f"
	)
}

New-MgCommunicationCallAudioRoutingGroup -CallId $callId -BodyParameter $params

```