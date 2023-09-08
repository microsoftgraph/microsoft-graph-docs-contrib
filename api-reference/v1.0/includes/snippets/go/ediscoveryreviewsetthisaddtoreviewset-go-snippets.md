---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphsecurity.NewAddToReviewSetPostRequestBody()
search := graphmodelssecurity.NewEdiscoverySearch()
id := "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7"
search.SetId(&id) 
requestBody.SetSearch(search)
additionalDataOptions := graphmodels.LINKEDFILES_ADDITIONALDATAOPTIONS 
requestBody.SetAdditionalDataOptions(&additionalDataOptions) 

graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByEdiscoveryReviewSetId("ediscoveryReviewSet-id").MicrosoftGraphSecurityAddToReviewSet().Post(context.Background(), requestBody, nil)


```