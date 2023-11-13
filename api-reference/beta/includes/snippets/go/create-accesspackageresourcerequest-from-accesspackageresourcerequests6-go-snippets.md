---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRequest()
catalogId := "26ac0c0a-08bc-4a7b-a313-839f58044ba5"
requestBody.SetCatalogId(&catalogId) 
requestType := "AdminAdd"
requestBody.SetRequestType(&requestType) 
justification := ""
requestBody.SetJustification(&justification) 
accessPackageResource := graphmodels.NewAccessPackageResource()
displayName := "Faculty cafeteria ordering"
accessPackageResource.SetDisplayName(&displayName) 
description := "Example application"
accessPackageResource.SetDescription(&description) 
url := "https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/"
accessPackageResource.SetUrl(&url) 
resourceType := "Application"
accessPackageResource.SetResourceType(&resourceType) 
originId := "2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e"
accessPackageResource.SetOriginId(&originId) 
originSystem := "AadApplication"
accessPackageResource.SetOriginSystem(&originSystem) 


accessPackageResourceAttribute := graphmodels.NewAccessPackageResourceAttribute()
attributeName := "extension_2b676109c7c74ae2b41549205f1947ed_personalTitle"
accessPackageResourceAttribute.SetAttributeName(&attributeName) 
isEditable := true
accessPackageResourceAttribute.SetIsEditable(&isEditable) 
isPersistedOnAssignmentRemoval := true
accessPackageResourceAttribute.SetIsPersistedOnAssignmentRemoval(&isPersistedOnAssignmentRemoval) 
attributeSource := graphmodels.NewAccessPackageResourceAttributeQuestion()
question := graphmodels.NewAccessPackageTextInputQuestion()
isRequired := false
question.SetIsRequired(&isRequired) 
sequence := int32(0)
question.SetSequence(&sequence) 
isSingleLineQuestion := true
question.SetIsSingleLineQuestion(&isSingleLineQuestion) 
text := graphmodels.NewAccessPackageLocalizedContent()
defaultText := "Title"
text.SetDefaultText(&defaultText) 
localizedTexts := []graphmodels.AccessPackageLocalizedTextable {

}
text.SetLocalizedTexts(localizedTexts)
question.SetText(text)
attributeSource.SetQuestion(question)
accessPackageResourceAttribute.SetAttributeSource(attributeSource)
attributeDestination := graphmodels.NewAccessPackageUserDirectoryAttributeStore()
accessPackageResourceAttribute.SetAttributeDestination(attributeDestination)

attributes := []graphmodels.AccessPackageResourceAttributeable {
	accessPackageResourceAttribute,
}
accessPackageResource.SetAttributes(attributes)
requestBody.SetAccessPackageResource(accessPackageResource)

accessPackageResourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageResourceRequests().Post(context.Background(), requestBody, nil)


```