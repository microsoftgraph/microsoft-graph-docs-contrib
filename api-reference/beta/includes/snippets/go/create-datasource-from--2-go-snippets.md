---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Compliance/Ediscovery/Cases/Item/SourceCollections/Item/CustodianSources/Item"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCustodianSource()
additionalData := map[string]interface{}{
	"odataId" : "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/custodians/ab3a628a383045eba344b3caecba3104/userSources/31423539-3846-4333-4136-353644383531", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").SourceCollections().BySourceCollectionId("sourceCollection-id").CustodianSources().ByCustodianSourceId("dataSource-id").Post(context.Background(), requestBody, nil)


```