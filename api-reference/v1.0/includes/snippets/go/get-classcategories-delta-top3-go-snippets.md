---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  grapheducation "github.com/microsoftgraph/msgraph-sdk-go/education"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)



requestTop := int32(3)

requestParameters := &grapheducation.EducationClasseItemAssignmentCategoriesDelta()RequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &grapheducation.EducationClasseItemAssignmentCategoriesDelta()RequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

delta(), err := graphClient.Education().Classes().ByEducationClassId("educationClass-id").AssignmentCategories().Delta().Get(context.Background(), configuration)


```