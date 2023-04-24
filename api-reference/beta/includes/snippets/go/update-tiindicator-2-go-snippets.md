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
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "return=representation")

configuration := &graphconfig.SecurityTiIndicatorItemRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTiIndicator()
additionalInformation := "additionalInformation-after-update"
requestBody.SetAdditionalInformation(&additionalInformation) 
confidence := int32(42)
requestBody.SetConfidence(&confidence) 
description := "description-after-update"
requestBody.SetDescription(&description) 

result, err := graphClient.Security().TiIndicators().ByTiIndicatorId("tiIndicator-id").Patch(context.Background(), requestBody, configuration)


```