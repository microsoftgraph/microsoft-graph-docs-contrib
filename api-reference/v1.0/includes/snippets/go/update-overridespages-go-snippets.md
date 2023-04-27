---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Identity/B2xUserFlows/Item/Languages/Item/OverridesPages/Item/Value"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.New$valuePutRequestBody()
additionalData := map[string]interface{}{


 := graphmodels.New()
elementType := "UxElement"
.SetElementType(&elementType) 
elementId := null
.SetElementId(&elementId) 
stringId := "alert_message"
.SetStringId(&stringId) 
override := true
.SetOverride(&override) 
value := "Are you sure that you want to cancel entering your information?"
.SetValue(&value) 

	localizedStrings := []graphmodels.Objectable {
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.Identity().B2xUserFlows().ByB2xUserFlowId("b2xIdentityUserFlow-id").Languages().ByLanguageId("userFlowLanguageConfiguration-id").OverridesPages().ByOverridesPageId("userFlowLanguagePage-id").Value().Put(context.Background(), requestBody, nil)


```