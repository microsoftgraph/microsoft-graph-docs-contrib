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


requestBody := graphmodels.NewUserSource()
email := "megan@contoso.com"
requestBody.SetEmail(&email) 
includedSources := graphmodels.MAILBOX, SITE_SOURCETYPE 
requestBody.SetIncludedSources(&includedSources) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").CustodiansById("custodian-id").UserSources().Post(context.Background(), requestBody, nil)


```