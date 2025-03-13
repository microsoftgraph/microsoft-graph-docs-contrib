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

requestBody := graphmodels.NewProjectParticipation()
categories := []string {
	"Branding",
}
requestBody.SetCategories(categories)
client := graphmodels.NewCompanyDetail()
displayName := "Contoso Ltd."
client.SetDisplayName(&displayName) 
department := "Corporate Marketing"
client.SetDepartment(&department) 
webUrl := "https://www.contoso.com"
client.SetWebUrl(&webUrl) 
requestBody.SetClient(client)
displayName := "Contoso Re-branding Project"
requestBody.SetDisplayName(&displayName) 
detail := graphmodels.NewPositionDetail()
company := graphmodels.NewCompanyDetail()
displayName := "Adventureworks Inc."
company.SetDisplayName(&displayName) 
department := "Consulting"
company.SetDepartment(&department) 
webUrl := "https://adventureworks.com"
company.SetWebUrl(&webUrl) 
detail.SetCompany(company)
description := "Rebranding of Contoso Ltd."
detail.SetDescription(&description) 
jobTitle := "Lead PM Rebranding"
detail.SetJobTitle(&jobTitle) 
role := "project management"
detail.SetRole(&role) 
summary := "A 6 month project to help Contoso rebrand after they were divested from a parent organization."
detail.SetSummary(&summary) 
requestBody.SetDetail(detail)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
projects, err := graphClient.Me().Profile().Projects().Post(context.Background(), requestBody, nil)


```