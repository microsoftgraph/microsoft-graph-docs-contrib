---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAgreement()
displayName := "All Contoso volunteers - Terms of use"
requestBody.SetDisplayName(&displayName) 
isViewingBeforeAcceptanceRequired := true
requestBody.SetIsViewingBeforeAcceptanceRequired(&isViewingBeforeAcceptanceRequired) 

graphClient.IdentityGovernance().TermsOfUse().AgreementsById("agreement-id").Patch(requestBody)


```