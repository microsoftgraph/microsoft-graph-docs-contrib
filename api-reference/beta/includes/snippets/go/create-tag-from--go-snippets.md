---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//ediscovery"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTag()
displayName := "Privileged"
requestBody.SetDisplayName(&displayName) 
description := "The document is privileged"
requestBody.SetDescription(&description) 
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/tags/98fdad78bbce4519b75474bc150575c3", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Compliance().Ediscovery().Cases().ByCaseId("case-id").Tags().Post(context.Background(), requestBody, nil)


```