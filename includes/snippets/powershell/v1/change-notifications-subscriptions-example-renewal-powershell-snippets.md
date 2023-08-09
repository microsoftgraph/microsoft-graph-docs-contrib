---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.ChangeNotifications

$params = @{
	expirationDateTime = [System.DateTime]::Parse("2016-03-22T11:00:00.0000000Z")
}

Update-MgSubscription -SubscriptionId $subscriptionId -BodyParameter $params

```