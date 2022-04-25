---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

deviceCompliancePolicySettingStateSummaryId := "deviceCompliancePolicySettingStateSummary-id"
result, err := graphClient.TenantRelationships().ManagedTenants().DeviceCompliancePolicySettingStateSummariesById(&deviceCompliancePolicySettingStateSummaryId).Get(nil)


```