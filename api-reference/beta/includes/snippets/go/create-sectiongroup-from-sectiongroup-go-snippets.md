---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Me/Onenote/SectionGroups/Item/SectionGroups"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSectionGroupsPostRequestBody()
additionalData := map[string]interface{}{
	"displayName" : "Section group name", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Me().Onenote().SectionGroups().BySectionGroupId("sectionGroup-id").SectionGroups().Post(context.Background(), requestBody, nil)


```