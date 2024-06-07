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

requestBody := graphmodels.NewSharePointProtectionPolicy()
displayName := "SharePoint Protection Policy"
requestBody.SetDisplayName(&displayName) 


siteProtectionUnit := graphmodels.NewSiteProtectionUnit()
siteId := "contoso.sharepoint.com,febad3c2-a7b2-454c-8910-272c7bcf78fc,ba7b70d0-8ba0-4cae-b19a-7cb8c739512f"
siteProtectionUnit.SetSiteId(&siteId) 
siteProtectionUnit1 := graphmodels.NewSiteProtectionUnit()
siteId := "contoso.sharepoint.com/sites/marketing,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740"
siteProtectionUnit1.SetSiteId(&siteId) 
siteProtectionUnit2 := graphmodels.NewSiteProtectionUnit()
siteId := "contoso.sharepoint.com/sites/hr,3bfc861e-9a17-4a27-9562-3d8b26c81bb5,0271110f-634f-4300-a841-3a8a2e851851"
siteProtectionUnit2.SetSiteId(&siteId) 

siteProtectionUnits := []graphmodels.SiteProtectionUnitable {
	siteProtectionUnit,
	siteProtectionUnit1,
	siteProtectionUnit2,
}
requestBody.SetSiteProtectionUnits(siteProtectionUnits)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
sharePointProtectionPolicies, err := graphClient.Solutions().BackupRestore().SharePointProtectionPolicies().Post(context.Background(), requestBody, nil)


```