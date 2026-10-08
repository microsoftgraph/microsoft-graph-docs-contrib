---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphsecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/security"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphsecurity.NewExportPostRequestBody()
outputName := "Export via API"
requestBody.SetOutputName(&outputName) 
description := "Export for the Contoso investigation"
requestBody.SetDescription(&description) 
exportOptions := graphmodels.ORIGINALFILES, TAGS, SPLITSOURCE, INCLUDEFOLDERANDPATH, FRIENDLYNAME, CONDENSEPATHS_EXPORTOPTIONS 
requestBody.SetExportOptions(&exportOptions) 
exportStructure := graphmodels.MSG_EXPORTFILESTRUCTURE 
requestBody.SetExportStructure(&exportStructure) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.Security().Cases().EdiscoveryCases().ByEdiscoveryCaseId("ediscoveryCase-id").ReviewSets().ByEdiscoveryReviewSetId("ediscoveryReviewSet-id").MicrosoftGraphSecurityExport().Post(context.Background(), requestBody, nil)


```