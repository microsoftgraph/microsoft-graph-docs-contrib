---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphconfig "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(3)

requestParameters := &graphconfig.EducationClasseItemAssignmentCategoriesDelta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphconfig.EducationClasseItemAssignmentCategoriesDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.Education().Classes().ByClasseId("educationClass-id").AssignmentCategories().Delta().Get(context.Background(), configuration)


```