---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	expirationDateTime = [System.DateTime]::Parse("2023-01-12T18:23:45.9356913Z")
}

Update-MgSubscription -SubscriptionId $subscriptionId -BodyParameter $params

```