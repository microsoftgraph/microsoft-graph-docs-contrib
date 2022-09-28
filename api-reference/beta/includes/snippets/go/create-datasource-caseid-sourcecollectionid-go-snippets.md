---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDataSource()
additionalData := map[string]interface{}{
	"email" : "badguy@contoso.com", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").SourceCollectionsById("sourceCollection-id").AdditionalSources().Post(context.Background(), requestBody, nil)


```