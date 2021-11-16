---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

managedDeviceComplianceId := "managedDeviceCompliance-id"
result, err := graphClient.TenantRelationships().ManagedTenants().ManagedDeviceCompliancesById(&managedDeviceComplianceId).Get(options)


```