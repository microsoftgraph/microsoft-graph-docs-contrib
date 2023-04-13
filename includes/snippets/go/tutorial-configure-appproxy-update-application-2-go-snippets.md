---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

result, err := graphClient.ApplicationsById("application-id").Patch(context.Background(), requestBody, nil)


```