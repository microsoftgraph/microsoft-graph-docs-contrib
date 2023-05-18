---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Compliance/Ediscovery/Cases/Item/ReviewSets/Item/MicrosoftGraphEdiscoveryAddToReviewSet"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAddToReviewSetPostRequestBody()
sourceCollection := graphmodels.NewSourceCollection()
id := "1a9b4145d8f84e39bc45a7f68c5c5119"
sourceCollection.SetId(&id) 
requestBody.SetSourceCollection(sourceCollection)
additionalData := map[string]interface{}{
	"additionalData" : "linkedFiles", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").ReviewSets().ByReviewSetId("reviewSet-id").MicrosoftGraphEdiscoveryAddToReviewSet().Post(context.Background(), requestBody, nil)


```