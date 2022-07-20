---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUnifiedGroupSource()
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 
additionalData := map[string]interface{}{
	"group@odata.bind" : "https://graph.microsoft.com/v1.0/groups/b96f95c5-b1b3-4142-b039-8ac79e7d2c84", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").UnifiedGroupSources().Post(requestBody)


```