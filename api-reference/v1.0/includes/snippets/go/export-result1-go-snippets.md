---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewExportResultPostRequestBody()
displayName := "Export 1 - simple PST"
requestBody.SetDisplayName(&displayName) 
exportCriteria := graphmodels.SEARCHHITS_EXPORTCRITERIA 
requestBody.SetExportCriteria(&exportCriteria) 
additionalOptions := graphmodels.HTMLTRANSCRIPTS, SPLITSOURCE, INCLUDEFOLDERANDPATH, CONDENSEPATHS, FRIENDLYNAME_ADDITIONALOPTIONS 
requestBody.SetAdditionalOptions(&additionalOptions) 
exportFormat := graphmodels.PST_EXPORTFORMAT 
requestBody.SetExportFormat(&exportFormat) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").Searches().ByEdiscoverySearchId("ediscoverySearch-id").MicrosoftGraphSecurityExportResult().Post(context.Background(), requestBody, nil)


```