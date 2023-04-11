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


requestBody := graphmodels.NewAttributeSet()
id := "Engineering"
requestBody.SetId(&id) 
description := "Attributes for engineering team"
requestBody.SetDescription(&description) 
maxAttributesPerSet := int32(25)
requestBody.SetMaxAttributesPerSet(&maxAttributesPerSet) 

result, err := graphClient.Directory().AttributeSets().Post(context.Background(), requestBody, nil)


```