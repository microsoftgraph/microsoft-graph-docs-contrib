---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsediscovery.NewUnifiedGroupSource()
group := graphmodels.NewGroup()
mail := "SecretGroup@contoso.com"
group.SetMail(&mail) 
requestBody.SetGroup(group)
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

unifiedGroupSources, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Custodians().ByCustodianId("custodian-id").UnifiedGroupSources().Post(context.Background(), requestBody, nil)


```