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
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphsecurity.NewComputeRightsAndInheritancePostRequestBody()
delegatedUserEmail := "String"
requestBody.SetDelegatedUserEmail(&delegatedUserEmail) 
locale := "String"
requestBody.SetLocale(&locale) 


protectedContent := graphmodels.NewProtectedContent()

protectedContents := []graphmodels.ProtectedContentable {
	protectedContent,
}
requestBody.SetProtectedContents(protectedContents)
supportedContentFormats := []string {
	"String",
}
requestBody.SetSupportedContentFormats(supportedContentFormats)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
computeRightsAndInheritance, err := graphClient.Security().DataSecurityAndGovernance().SensitivityLabels().ComputeRightsAndInheritance().Post(context.Background(), requestBody, nil)


```