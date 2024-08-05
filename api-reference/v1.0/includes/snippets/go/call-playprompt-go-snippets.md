---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphcommunications "github.com/microsoftgraph/msgraph-sdk-go/communications"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphcommunications.NewPlayPromptPostRequestBody()
clientContext := "d45324c1-fcb5-430a-902c-f20af696537c"
requestBody.SetClientContext(&clientContext) 


prompt := graphmodels.NewMediaPrompt()
mediaInfo := graphmodels.NewMediaInfo()
uri := "https://cdn.contoso.com/beep.wav"
mediaInfo.SetUri(&uri) 
resourceId := "1D6DE2D4-CD51-4309-8DAA-70768651088E"
mediaInfo.SetResourceId(&resourceId) 
prompt.SetMediaInfo(mediaInfo)

prompts := []graphmodels.Promptable {
	prompt,
}
requestBody.SetPrompts(prompts)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
playPrompt, err := graphClient.Communications().Calls().ByCallId("call-id").PlayPrompt().Post(context.Background(), requestBody, nil)


```