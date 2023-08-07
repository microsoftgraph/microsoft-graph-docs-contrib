---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMobilityManagementPolicy()
complianceUrl := "https://portal.mg.contoso.com/?portalAction=Compliance"
requestBody.SetComplianceUrl(&complianceUrl) 
discoveryUrl := "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc"
requestBody.SetDiscoveryUrl(&discoveryUrl) 
termsOfUseUrl := "https://portal.mg.contoso.com/TermsofUse.aspx"
requestBody.SetTermsOfUseUrl(&termsOfUseUrl) 

mobileAppManagementPolicies, err := graphClient.Policies().MobileAppManagementPolicies().ByMobilityManagementPolicyId("mobilityManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```