---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

cloudPcDeviceId := "cloudPcDevice-id"
result, err := graphClient.TenantRelationships().ManagedTenants().CloudPcDevicesById(&cloudPcDeviceId).Get(options)


```