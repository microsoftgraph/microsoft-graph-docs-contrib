---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	AssignedTo = "String"
	ClosedDateTime = [System.DateTime]::Parse("String (timestamp)")
	Comments = @(
		"String"
	)
	Feedback = "@odata.type: microsoft.graph.alertFeedback"
	Status = "@odata.type: microsoft.graph.alertStatus"
	Tags = @(
		"String"
	)
	VendorInformation = @{
		Provider = "String"
		Vendor = "String"
	}
}

Update-MgSecurityAlert -AlertId $alertId -BodyParameter $params

```