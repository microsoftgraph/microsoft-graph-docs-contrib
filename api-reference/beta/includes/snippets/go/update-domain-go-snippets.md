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


requestBody := graphmodels.NewDomain()
isDefault := true
requestBody.SetIsDefault(&isDefault) 
supportedServices := []string {
	"Email",
	"OfficeCommunicationsOnline",

}
requestBody.SetSupportedServices(supportedServices)

result, err := graphClient.Domains().ByDomainId("domain-id").Patch(context.Background(), requestBody, nil)


```