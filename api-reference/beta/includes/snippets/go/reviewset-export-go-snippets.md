---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewExportPostRequestBody()
outputName := "2020-12-06 Contoso investigation export"
requestBody.SetOutputName(&outputName) 
description := "Export for the Contoso investigation"
requestBody.SetDescription(&description) 
exportOptions := graphmodels.ORIGINALFILES,FILEINFO,TAGS_EXPORTOPTIONS 
requestBody.SetExportOptions(&exportOptions) 
exportStructure := graphmodels.DIRECTORY_EXPORTFILESTRUCTURE 
requestBody.SetExportStructure(&exportStructure) 

graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").Export().Post(context.Background(), requestBody, nil)


```