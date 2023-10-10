---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphcompliance "github.com/microsoftgraph/msgraph-beta-sdk-go/compliance"
	  graphmodelsediscovery "github.com/microsoftgraph/msgraph-beta-sdk-go/models/ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphcompliance.NewAddToReviewSetPostRequestBody()
sourceCollection := graphmodelsediscovery.NewSourceCollection()
id := "1a9b4145d8f84e39bc45a7f68c5c5119"
sourceCollection.SetId(&id) 
requestBody.SetSourceCollection(sourceCollection)
additionalData := map[string]interface{}{
	"additionalData" : "linkedFiles", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").MicrosoftGraphEdiscoveryAddToReviewSet().Post(context.Background(), requestBody, nil)


```