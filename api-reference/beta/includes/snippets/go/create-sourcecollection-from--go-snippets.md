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


requestBody := graphmodels.NewSourceCollection()
displayName := "Quarterly Financials search"
requestBody.SetDisplayName(&displayName) 
contentQuery := "subject:'Quarterly Financials'"
requestBody.SetContentQuery(&contentQuery) 
additionalData := map[string]interface{}{
	odataBind := []string {
		"https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/2192ca408ea2410eba3bec8ae873be6b/userSources/46384443-4137-3032-3437-363939433735",

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().Post(context.Background(), requestBody, nil)


```