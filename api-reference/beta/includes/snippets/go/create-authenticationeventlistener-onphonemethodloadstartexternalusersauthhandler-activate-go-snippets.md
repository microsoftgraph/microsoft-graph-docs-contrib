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

requestBody := graphmodels.NewAuthenticationEventListener()
conditions := graphmodels.NewAuthenticationConditions()
applications := graphmodels.NewAuthenticationConditionsApplications()
includeApplications := []graphmodels.AuthenticationConditionApplicationable {
	"3dfff01b-0afb-4a07-967f-d1ccbd81102a",
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
requestBody.SetConditions(conditions)
priority := int32(500)
requestBody.SetPriority(&priority) 
handler := graphmodels.NewOnPhoneMethodLoadStartExternalUsersAuthHandler()
smsOptions := graphmodels.NewPhoneOptions()
includeAdditionalRegions := []graph.Numberable {
 := int32(222)
smsOptions.Set(&) 
 := int32(998)
smsOptions.Set(&)
}
smsOptions.SetIncludeAdditionalRegions(includeAdditionalRegions)
excludeRegions := []graph.numberable {

}
smsOptions.SetExcludeRegions(excludeRegions)
handler.SetSmsOptions(smsOptions)
requestBody.SetHandler(handler)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
authenticationEventListeners, err := graphClient.Identity().AuthenticationEventListeners().Post(context.Background(), requestBody, nil)


```