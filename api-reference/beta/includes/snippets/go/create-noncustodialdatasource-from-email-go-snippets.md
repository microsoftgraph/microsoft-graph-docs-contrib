---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewNoncustodialDataSource()
applyHoldToSource := true
requestBody.SetApplyHoldToSource(&applyHoldToSource) 
dataSource := graphmodels.NewDataSource()
additionalData := map[string]interface{}{
	"email" : "adelev@contoso.com", 
}
dataSource.SetAdditionalData(additionalData)
requestBody.SetDataSource(dataSource)

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").NoncustodialDataSources().Post(context.Background(), requestBody, nil)


```