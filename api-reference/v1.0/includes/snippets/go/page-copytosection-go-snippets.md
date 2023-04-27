---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/Onenote/Pages/Item/CopyToSection"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewCopyToSectionPostRequestBody()
id := "id-value"
requestBody.SetId(&id) 
groupId := "groupId-value"
requestBody.SetGroupId(&groupId) 

result, err := graphClient.Me().Onenote().Pages().ByPageId("onenotePage-id").CopyToSection().Post(context.Background(), requestBody, nil)


```