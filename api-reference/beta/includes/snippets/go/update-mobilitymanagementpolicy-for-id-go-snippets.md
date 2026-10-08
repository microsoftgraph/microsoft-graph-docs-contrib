---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMobileAppManagementPolicy()
complianceUrl := "https://portal.mg.contoso.com/?portalAction=Compliance"
requestBody.SetComplianceUrl(&complianceUrl) 
discoveryUrl := "https://enrollment.mg.contoso.com/enrollmentserver/discovery.svc"
requestBody.SetDiscoveryUrl(&discoveryUrl) 
termsOfUseUrl := "https://portal.mg.contoso.com/TermsofUse.aspx"
requestBody.SetTermsOfUseUrl(&termsOfUseUrl) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
mobileAppManagementPolicies, err := graphClient.Policies().MobileAppManagementPolicies().ByMobileAppManagementPolicyId("mobileAppManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```