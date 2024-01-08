---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAttributeSet()
description := "Attributes for engineering team"
requestBody.SetDescription(&description) 
maxAttributesPerSet := int32(20)
requestBody.SetMaxAttributesPerSet(&maxAttributesPerSet) 

attributeSets, err := graphClient.Directory().AttributeSets().ByAttributeSetId("attributeSet-id").Patch(context.Background(), requestBody, nil)


```