---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageResourceRequest()
requestType := graphmodels.ADMINUPDATE_ACCESSPACKAGEREQUESTTYPE 
requestBody.SetRequestType(&requestType) 
resource := graphmodels.NewAccessPackageResource()
originId := "e81d7f57-0840-45e1-894b-f505c1bdcc1f"
resource.SetOriginId(&originId) 
originSystem := "AadApplication"
resource.SetOriginSystem(&originSystem) 


accessPackageResourceAttribute := graphmodels.NewAccessPackageResourceAttribute()
destination := graphmodels.NewAccessPackageUserDirectoryAttributeStore()
accessPackageResourceAttribute.SetDestination(destination)
name := "officeLocation"
accessPackageResourceAttribute.SetName(&name) 
source := graphmodels.NewAccessPackageResourceAttributeQuestion()
question := graphmodels.NewAccessPackageTextInputQuestion()
sequence := int32(1)
question.SetSequence(&sequence) 
isRequired := true
question.SetIsRequired(&isRequired) 
isAnswerEditable := true
question.SetIsAnswerEditable(&isAnswerEditable) 
text := "What office do you work at?"
question.SetText(&text) 
isSingleLineQuestion := true
question.SetIsSingleLineQuestion(&isSingleLineQuestion) 
regexPattern := "[a-zA-Z]+[a-zA-Z\s]*"
question.SetRegexPattern(&regexPattern) 
source.SetQuestion(question)
accessPackageResourceAttribute.SetSource(source)
accessPackageResourceAttribute1 := graphmodels.NewAccessPackageResourceAttribute()
destination := graphmodels.NewAccessPackageUserDirectoryAttributeStore()
accessPackageResourceAttribute1.SetDestination(destination)
name := "extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter"
accessPackageResourceAttribute1.SetName(&name) 
source := graphmodels.NewAccessPackageResourceAttributeQuestion()
question := graphmodels.NewAccessPackageTextInputQuestion()
isRequired := false
question.SetIsRequired(&isRequired) 
text := "What is your cost center number?"
question.SetText(&text) 
sequence := int32(0)
question.SetSequence(&sequence) 
isSingleLineQuestion := true
question.SetIsSingleLineQuestion(&isSingleLineQuestion) 
regexPattern := "[0-9]*"
question.SetRegexPattern(&regexPattern) 
source.SetQuestion(question)
accessPackageResourceAttribute1.SetSource(source)

attributes := []graphmodels.AccessPackageResourceAttributeable {
	accessPackageResourceAttribute,
	accessPackageResourceAttribute1,
}
resource.SetAttributes(attributes)
requestBody.SetResource(resource)
catalog := graphmodels.NewAccessPackageCatalog()
id := "beedadfe-01d5-4025-910b-84abb9369997"
catalog.SetId(&id) 
requestBody.SetCatalog(catalog)

resourceRequests, err := graphClient.IdentityGovernance().EntitlementManagement().ResourceRequests().Post(context.Background(), requestBody, nil)


```