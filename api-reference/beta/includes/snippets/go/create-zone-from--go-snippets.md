---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewZone()
displayName := "Production Zone"
requestBody.SetDisplayName(&displayName) 
description := "Zone for production environments"
requestBody.SetDescription(&description) 


environment := graphmodelssecurity.NewEnvironment()
kind := graphmodels.AWSACCOUNT_ENVIRONMENTKIND 
environment.SetKind(&kind) 
id := "181994123251"
environment.SetId(&id) 
environment1 := graphmodelssecurity.NewEnvironment()
kind := graphmodels.AWSACCOUNT_ENVIRONMENTKIND 
environment1.SetKind(&kind) 
id := "326438728454"
environment1.SetId(&id) 
environment2 := graphmodelssecurity.NewEnvironment()
kind := graphmodels.AZURESUBSCRIPTION_ENVIRONMENTKIND 
environment2.SetKind(&kind) 
id := "/subscriptions/02687862-a843-4846-81f0-efe9ef244daa"
environment2.SetId(&id) 
environment3 := graphmodelssecurity.NewEnvironment()
kind := graphmodels.GCPPROJECT_ENVIRONMENTKIND 
environment3.SetKind(&kind) 
id := "69483221284"
environment3.SetId(&id) 

environments := []graphmodelssecurity.Environmentable {
	environment,
	environment1,
	environment2,
	environment3,
}
requestBody.SetEnvironments(environments)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
zones, err := graphClient.Security().Zones().Post(context.Background(), requestBody, nil)


```