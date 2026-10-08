---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelssecurity "github.com/microsoftgraph/msgraph-beta-sdk-go/models/security"
	  //other-imports
)

requestBody := graphmodelssecurity.NewDetectionRule()
id := "office-encoded-powershell"
requestBody.SetId(&id) 
displayName := "Suspicious encoded PowerShell from Office"
requestBody.SetDisplayName(&displayName) 
description := "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern."
requestBody.SetDescription(&description) 
status := graphmodels.ENABLED_DETECTIONRULESTATUS 
requestBody.SetStatus(&status) 
queryCondition := graphmodelssecurity.NewQueryCondition()
queryText := "DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'"
queryCondition.SetQueryText(&queryText) 
requestBody.SetQueryCondition(queryCondition)
schedule := graphmodelssecurity.NewRuleSchedule()
frequency , err := abstractions.ParseISODuration("PT1H")
schedule.SetFrequency(&frequency) 
requestBody.SetSchedule(schedule)
detectionAction := graphmodelssecurity.NewDetectionAction()
alertTemplate := graphmodelssecurity.NewAlertTemplate()
title := "Suspicious encoded PowerShell from Office"
alertTemplate.SetTitle(&title) 
description := "An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution."
alertTemplate.SetDescription(&description) 
severity := graphmodels.HIGH_ALERTSEVERITY 
alertTemplate.SetSeverity(&severity) 
recommendedActions := "Investigate the parent Office document, isolate the device, and review the user's recent email activity."
alertTemplate.SetRecommendedActions(&recommendedActions) 
entityMappings := graphmodelssecurity.NewEntityMappingConfiguration()


accountEntityMapping := graphmodelssecurity.NewAccountEntityMapping()
nameColumn := "AccountName"
accountEntityMapping.SetNameColumn(&nameColumn) 
ntDomainColumn := "AccountDomain"
accountEntityMapping.SetNtDomainColumn(&ntDomainColumn) 
sidColumn := "AccountSid"
accountEntityMapping.SetSidColumn(&sidColumn) 

accounts := []graphmodelssecurity.AccountEntityMappingable {
	accountEntityMapping,
}
entityMappings.SetAccounts(accounts)


hostEntityMapping := graphmodelssecurity.NewHostEntityMapping()
deviceIdColumn := "DeviceId"
hostEntityMapping.SetDeviceIdColumn(&deviceIdColumn) 
nameColumn := "DeviceName"
hostEntityMapping.SetNameColumn(&nameColumn) 

hosts := []graphmodelssecurity.HostEntityMappingable {
	hostEntityMapping,
}
entityMappings.SetHosts(hosts)


fileEntityMapping := graphmodelssecurity.NewFileEntityMapping()
nameColumn := "FileName"
fileEntityMapping.SetNameColumn(&nameColumn) 
sha1Column := "SHA1"
fileEntityMapping.SetSha1Column(&sha1Column) 
sha256Column := "SHA256"
fileEntityMapping.SetSha256Column(&sha256Column) 

files := []graphmodelssecurity.FileEntityMappingable {
	fileEntityMapping,
}
entityMappings.SetFiles(files)
alertTemplate.SetEntityMappings(entityMappings)


mitreTactic := graphmodelssecurity.NewMitreTactic()
tactic := "Execution"
mitreTactic.SetTactic(&tactic) 


mitreTechnique := graphmodelssecurity.NewMitreTechnique()
technique := "T1059.001"
mitreTechnique.SetTechnique(&technique) 

techniques := []graphmodelssecurity.MitreTechniqueable {
	mitreTechnique,
}
mitreTactic.SetTechniques(techniques)

tactics := []graphmodelssecurity.MitreTacticable {
	mitreTactic,
}
alertTemplate.SetTactics(tactics)
detectionAction.SetAlertTemplate(alertTemplate)
requestBody.SetDetectionAction(detectionAction)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
detectionRules, err := graphClient.Security().Rules().DetectionRules().Post(context.Background(), requestBody, nil)


```