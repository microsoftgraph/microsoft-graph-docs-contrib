---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAgreement()
displayName := "All Contoso volunteers - Terms of use"
requestBody.SetDisplayName(&displayName) 
isViewingBeforeAcceptanceRequired := true
requestBody.SetIsViewingBeforeAcceptanceRequired(&isViewingBeforeAcceptanceRequired) 

result, err := graphClient.IdentityGovernance().TermsOfUse().Agreements().ByAgreementId("agreement-id").Patch(context.Background(), requestBody, nil)


```