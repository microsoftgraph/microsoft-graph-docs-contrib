---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Users/Item/Security/InformationProtection/SensitivityLabels/SecurityEvaluateApplication"
	  graphconfig "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("User-Agent", "ContosoLobApp/1.0")

configuration := &graphconfig.UserItemSecurityInformationProtectionSensitivityLabelsSecurity.evaluateApplicationRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewEvaluateApplicationPostRequestBody()
contentInfo := graphmodels.NewContentInfo()
contentFormat := "File"
contentInfo.SetContentFormat(&contentFormat) 
identifier := null
contentInfo.SetIdentifier(&identifier) 
state := graphmodels.REST_CONTENTSTATE 
contentInfo.SetState(&state) 


keyValuePair := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Enabled"
keyValuePair.SetName(&name) 
value := "True"
keyValuePair.SetValue(&value) 
keyValuePair1 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Method"
keyValuePair1.SetName(&name) 
value := "Standard"
keyValuePair1.SetValue(&value) 
keyValuePair2 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SetDate"
keyValuePair2.SetName(&name) 
value := "1/1/0001 12:00:00 AM"
keyValuePair2.SetValue(&value) 
keyValuePair3 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_SiteId"
keyValuePair3.SetName(&name) 
value := "cfa4cf1d-a337-4481-aa99-19d8f3d63f7c"
keyValuePair3.SetValue(&value) 
keyValuePair4 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_Name"
keyValuePair4.SetName(&name) 
value := "LabelScopedToBob_Tests"
keyValuePair4.SetValue(&value) 
keyValuePair5 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ContentBits"
keyValuePair5.SetName(&name) 
value := "0"
keyValuePair5.SetValue(&value) 
keyValuePair6 := graphmodels.NewKeyValuePair()
name := "MSIP_Label_3a80e051-487c-40d4-b491-73ad25d997e6_ActionId"
keyValuePair6.SetName(&name) 
value := "00000000-0000-0000-0000-000000000000"
keyValuePair6.SetValue(&value) 

metadata := []graphmodels.KeyValuePairable {
	keyValuePair,
	keyValuePair1,
	keyValuePair2,
	keyValuePair3,
	keyValuePair4,
	keyValuePair5,
	keyValuePair6,

}
contentInfo.SetMetadata(metadata)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.security.contentFormat", 
	"format" : "default", 
	"odataType" : "#microsoft.graph.security.contentState", 
	"odataType" : "#Collection(microsoft.graph.security.keyValuePair)", 
}
contentInfo.SetAdditionalData(additionalData)
requestBody.SetContentInfo(contentInfo)
labelingOptions := graphmodels.NewLabelingOptions()
assignmentMethod := graphmodels.STANDARD_ASSIGNMENTMETHOD 
labelingOptions.SetAssignmentMethod(&assignmentMethod) 
labelId := "836ff34f-b604-4a62-a68c-d6be4205d569"
labelingOptions.SetLabelId(&labelId) 
downgradeJustification := graphmodels.NewDowngradeJustification()
justificationMessage := "Justified"
downgradeJustification.SetJustificationMessage(&justificationMessage) 
isDowngradeJustified := true
downgradeJustification.SetIsDowngradeJustified(&isDowngradeJustified) 
labelingOptions.SetDowngradeJustification(downgradeJustification)
extendedProperties := []graphmodels.KeyValuePairable {

}
labelingOptions.SetExtendedProperties(extendedProperties)
additionalData := map[string]interface{}{
	"odataType" : "#microsoft.graph.security.assignmentMethod", 
	"odataType" : "#Guid", 
	"odataType" : "#Collection(microsoft.graph.security.keyValuePair)", 
}
labelingOptions.SetAdditionalData(additionalData)
requestBody.SetLabelingOptions(labelingOptions)

result, err := graphClient.Users().ByUserId("user-id").Security().InformationProtection().SensitivityLabels().SecurityEvaluateApplication().Post(context.Background(), requestBody, configuration)


```