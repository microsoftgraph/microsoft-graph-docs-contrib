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

requestBody := graphmodels.NewApplication()
onPremisesPublishing := graphmodels.NewOnPremisesPublishing()
externalAuthenticationType := graphmodels.AADPREAUTHENTICATION_EXTERNALAUTHENTICATIONTYPE 
onPremisesPublishing.SetExternalAuthenticationType(&externalAuthenticationType) 
internalUrl := "https://contosoiwaapp.com"
onPremisesPublishing.SetInternalUrl(&internalUrl) 
externalUrl := "https://contosoiwaapp-contoso.msappproxy.net"
onPremisesPublishing.SetExternalUrl(&externalUrl) 
isHttpOnlyCookieEnabled := true
onPremisesPublishing.SetIsHttpOnlyCookieEnabled(&isHttpOnlyCookieEnabled) 
isOnPremPublishingEnabled := true
onPremisesPublishing.SetIsOnPremPublishingEnabled(&isOnPremPublishingEnabled) 
isPersistentCookieEnabled := true
onPremisesPublishing.SetIsPersistentCookieEnabled(&isPersistentCookieEnabled) 
isSecureCookieEnabled := true
onPremisesPublishing.SetIsSecureCookieEnabled(&isSecureCookieEnabled) 
isStateSessionEnabled := true
onPremisesPublishing.SetIsStateSessionEnabled(&isStateSessionEnabled) 
isTranslateHostHeaderEnabled := true
onPremisesPublishing.SetIsTranslateHostHeaderEnabled(&isTranslateHostHeaderEnabled) 
isTranslateLinksInBodyEnabled := true
onPremisesPublishing.SetIsTranslateLinksInBodyEnabled(&isTranslateLinksInBodyEnabled) 
requestBody.SetOnPremisesPublishing(onPremisesPublishing)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
applications, err := graphClient.Applications().ByApplicationId("application-id").Patch(context.Background(), requestBody, nil)


```