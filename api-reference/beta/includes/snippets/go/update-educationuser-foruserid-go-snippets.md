---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewEducationUser()


relatedContact := graphmodels.NewRelatedContact()
displayName := "Father Time"
relatedContact.SetDisplayName(&displayName) 
emailAddress := "father@time.com"
relatedContact.SetEmailAddress(&emailAddress) 
mobilePhone := "4251231234"
relatedContact.SetMobilePhone(&mobilePhone) 
relationship := graphmodels.GUARDIAN_CONTACTRELATIONSHIP 
relatedContact.SetRelationship(&relationship) 
accessConsent := true
relatedContact.SetAccessConsent(&accessConsent) 
relatedContact1 := graphmodels.NewRelatedContact()
displayName := "Mother Nature"
relatedContact1.SetDisplayName(&displayName) 
emailAddress := "mother@nature.co.uk"
relatedContact1.SetEmailAddress(&emailAddress) 
mobilePhone := "3251231234"
relatedContact1.SetMobilePhone(&mobilePhone) 
relationship := graphmodels.PARENT_CONTACTRELATIONSHIP 
relatedContact1.SetRelationship(&relationship) 
accessConsent := true
relatedContact1.SetAccessConsent(&accessConsent) 

relatedContacts := []graphmodels.RelatedContactable {
	relatedContact,
	relatedContact1,

}
requestBody.SetRelatedContacts(relatedContacts)

result, err := graphClient.Education().Users().ByUserId("educationUser-id").Patch(context.Background(), requestBody, nil)


```