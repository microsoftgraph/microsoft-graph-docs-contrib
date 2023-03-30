---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//industryData"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewInboundFlow()
dataDomain := graphmodels.EDUCATIONROSTERING_INBOUNDDOMAIN 
requestBody.SetDataDomain(&dataDomain) 
displayName := "Inbound rostering flow"
requestBody.SetDisplayName(&displayName) 
effectiveDateTime , err := time.Parse(time.RFC3339, "2023-03-12T16:40:46.924769+05:30")
requestBody.SetEffectiveDateTime(&effectiveDateTime) 
expirationDateTime , err := time.Parse(time.RFC3339, "2023-03-13T16:40:46.924769+05:30")
requestBody.SetExpirationDateTime(&expirationDateTime) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271", 
	"odataBind" : "https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.External().IndustryData().InboundFlows().Post(context.Background(), requestBody, nil)


```