---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAgreementFileLocalization()
fileName := "Contoso ToU for guest users (French)"
requestBody.SetFileName(&fileName) 
language := "fr-FR"
requestBody.SetLanguage(&language) 
isDefault := false
requestBody.SetIsDefault(&isDefault) 
isMajorVersion := false
requestBody.SetIsMajorVersion(&isMajorVersion) 
displayName := "Contoso ToU for guest users (French)"
requestBody.SetDisplayName(&displayName) 
fileData := graphmodels.NewAgreementFileData()
data := []byte("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data")
fileData.SetData(&data) 
requestBody.SetFileData(fileData)

result, err := graphClient.IdentityGovernance().TermsOfUse().Agreements().ByAgreementId("agreement-id").Files().Post(context.Background(), requestBody, nil)


```