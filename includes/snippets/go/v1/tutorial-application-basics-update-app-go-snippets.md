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

requestBody := graphmodels.NewApplication()
tags := []string {
	"HR",
	"Payroll",
	"HideApp",
}
requestBody.SetTags(tags)
info := graphmodels.NewInformationalUrl()
logoUrl := "https://cdn.contoso.com/photo/2016/03/21/23/25/link-1271843_1280.png"
info.SetLogoUrl(&logoUrl) 
marketingUrl := "https://www.contoso.com/app/marketing"
info.SetMarketingUrl(&marketingUrl) 
privacyStatementUrl := "https://www.contoso.com/app/privacy"
info.SetPrivacyStatementUrl(&privacyStatementUrl) 
supportUrl := "https://www.contoso.com/app/support"
info.SetSupportUrl(&supportUrl) 
termsOfServiceUrl := "https://www.contoso.com/app/termsofservice"
info.SetTermsOfServiceUrl(&termsOfServiceUrl) 
requestBody.SetInfo(info)
web := graphmodels.NewWebApplication()
homePageUrl := "https://www.contoso.com/"
web.SetHomePageUrl(&homePageUrl) 
logoutUrl := "https://www.contoso.com/frontchannel_logout"
web.SetLogoutUrl(&logoutUrl) 
redirectUris := []string {
	"https://localhost",
}
web.SetRedirectUris(redirectUris)
requestBody.SetWeb(web)
serviceManagementReference := "Owners aliases: Finance @ contosofinance@contoso.com; The Phone Company HR consulting @ hronsite@thephone-company.com;"
requestBody.SetServiceManagementReference(&serviceManagementReference) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```