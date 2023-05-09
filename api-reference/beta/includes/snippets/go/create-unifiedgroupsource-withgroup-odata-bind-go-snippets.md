---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedGroupSource()
includedSources := graphmodels.MAILBOX_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/v1.0/groups/93f90172-fe05-43ea-83cf-ff785a40d610", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Custodians().ByCustodianId("ediscoveryCustodian-id").UnifiedGroupSources().Post(context.Background(), requestBody, nil)


```