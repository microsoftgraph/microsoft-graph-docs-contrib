---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//search"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAcronym()
displayName := "GDPR"
requestBody.SetDisplayName(&displayName) 
standsFor := "General Data Protection Regulation"
requestBody.SetStandsFor(&standsFor) 
description := "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas."
requestBody.SetDescription(&description) 
webUrl := "http://contoso.com/GDPR"
requestBody.SetWebUrl(&webUrl) 
state := graphmodels.PUBLISHED_ANSWERSTATE 
requestBody.SetState(&state) 

result, err := graphClient.Search().Acronyms().Post(context.Background(), requestBody, nil)


```