---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewVirtualEventPresenter()
presenterDetails := graphmodels.NewVirtualEventPresenterDetails()
bio := graphmodels.NewItemBody()
content := "Lead Product Manager of Contoso Sales department"
bio.SetContent(&content) 
contentType := graphmodels.TEXT_BODYTYPE 
bio.SetContentType(&contentType) 
presenterDetails.SetBio(bio)
company := "Contoso"
presenterDetails.SetCompany(&company) 
jobTitle := "Product Manager"
presenterDetails.SetJobTitle(&jobTitle) 
linkedInProfileWebUrl := "https://linkedin.com/in/DianeDemoss"
presenterDetails.SetLinkedInProfileWebUrl(&linkedInProfileWebUrl) 
personalSiteWebUrl := "https://DianeDemoss.com"
presenterDetails.SetPersonalSiteWebUrl(&personalSiteWebUrl) 
requestBody.SetPresenterDetails(presenterDetails)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
presenters, err := graphClient.Solutions().VirtualEvents().Webinars().ByVirtualEventWebinarId("virtualEventWebinar-id").Presenters().ByVirtualEventPresenterId("virtualEventPresenter-id").Patch(context.Background(), requestBody, nil)


```