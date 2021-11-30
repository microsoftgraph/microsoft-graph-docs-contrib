---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

identityUserFlowAttributeId := "identityUserFlowAttribute-id"
result, err := graphClient.Identity().UserFlowAttributesById(&identityUserFlowAttributeId).Get(options)


```