---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewLanguageProficiency()
displayName := "Norwegian Bokmål"
requestBody.SetDisplayName(&displayName) 
tag := "nb-NO"
requestBody.SetTag(&tag) 
spoken := graphmodels.NATIVEORBILINGUAL_LANGUAGEPROFICIENCYLEVEL 
requestBody.SetSpoken(&spoken) 
written := graphmodels.NATIVEORBILINGUAL_LANGUAGEPROFICIENCYLEVEL 
requestBody.SetWritten(&written) 
reading := graphmodels.NATIVEORBILINGUAL_LANGUAGEPROFICIENCYLEVEL 
requestBody.SetReading(&reading) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
languages, err := graphClient.Me().Profile().Languages().Post(context.Background(), requestBody, nil)


```