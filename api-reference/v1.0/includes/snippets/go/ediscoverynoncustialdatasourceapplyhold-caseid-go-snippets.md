---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyHoldPostRequestBody()
ids := []string {
	"39333641443238353535383731453339",
	"46333131344239353834433430454335",

}
requestBody.SetIds(ids)

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").NoncustodialDataSources().SecurityApplyHold().Post(context.Background(), requestBody, nil)


```