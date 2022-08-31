---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewMobilityManagementPolicy()
complianceUrl := "https://portal.uem.contoso.com/?portalAction=Compliance"
requestBody.SetComplianceUrl(&complianceUrl) 
discoveryUrl := "https://enrollment.uem.contoso.com/enrollmentserver/discovery.svc"
requestBody.SetDiscoveryUrl(&discoveryUrl) 
termsOfUseUrl := "https://portal.uem.contoso.com/TermsofUse.aspx"
requestBody.SetTermsOfUseUrl(&termsOfUseUrl) 

graphClient.Policies().MobileDeviceManagementPoliciesById("mobilityManagementPolicy-id").Patch(requestBody)


```