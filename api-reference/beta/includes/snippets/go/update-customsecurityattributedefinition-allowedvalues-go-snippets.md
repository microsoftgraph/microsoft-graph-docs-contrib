---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("OData-Version", "4.01")

configuration := &graphconfig.DirectoryCustomSecurityAttributeDefinitionItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewCustomSecurityAttributeDefinition()
additionalData := map[string]interface{}{


 := graphmodels.New()
id := "Baker"
.SetId(&id) 
isActive := false
.SetIsActive(&isActive) 
 := graphmodels.New()
id := "Skagit"
.SetId(&id) 
isActive := true
.SetIsActive(&isActive) 

	allowedValues@delta := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Directory().CustomSecurityAttributeDefinitions().ByCustomSecurityAttributeDefinitionId("customSecurityAttributeDefinition-id").Patch(context.Background(), requestBody, configuration)


```