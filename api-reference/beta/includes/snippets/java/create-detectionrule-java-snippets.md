---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.DetectionRule detectionRule = new com.microsoft.graph.beta.models.security.DetectionRule();
detectionRule.setOdataType("#microsoft.graph.security.detectionRule");
detectionRule.setId("office-encoded-powershell");
detectionRule.setDisplayName("Suspicious encoded PowerShell from Office");
detectionRule.setDescription("Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.");
detectionRule.setStatus(com.microsoft.graph.beta.models.security.DetectionRuleStatus.Enabled);
com.microsoft.graph.beta.models.security.QueryCondition queryCondition = new com.microsoft.graph.beta.models.security.QueryCondition();
queryCondition.setQueryText("DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'");
detectionRule.setQueryCondition(queryCondition);
com.microsoft.graph.beta.models.security.RuleSchedule schedule = new com.microsoft.graph.beta.models.security.RuleSchedule();
PeriodAndDuration frequency = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
schedule.setFrequency(frequency);
detectionRule.setSchedule(schedule);
com.microsoft.graph.beta.models.security.DetectionAction detectionAction = new com.microsoft.graph.beta.models.security.DetectionAction();
com.microsoft.graph.beta.models.security.AlertTemplate alertTemplate = new com.microsoft.graph.beta.models.security.AlertTemplate();
alertTemplate.setTitle("Suspicious encoded PowerShell from Office");
alertTemplate.setDescription("An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.");
alertTemplate.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alertTemplate.setRecommendedActions("Investigate the parent Office document, isolate the device, and review the user's recent email activity.");
com.microsoft.graph.beta.models.security.EntityMappingConfiguration entityMappings = new com.microsoft.graph.beta.models.security.EntityMappingConfiguration();
LinkedList<com.microsoft.graph.beta.models.security.AccountEntityMapping> accounts = new LinkedList<com.microsoft.graph.beta.models.security.AccountEntityMapping>();
com.microsoft.graph.beta.models.security.AccountEntityMapping accountEntityMapping = new com.microsoft.graph.beta.models.security.AccountEntityMapping();
accountEntityMapping.setNameColumn("AccountName");
accountEntityMapping.setNtDomainColumn("AccountDomain");
accountEntityMapping.setSidColumn("AccountSid");
accounts.add(accountEntityMapping);
entityMappings.setAccounts(accounts);
LinkedList<com.microsoft.graph.beta.models.security.HostEntityMapping> hosts = new LinkedList<com.microsoft.graph.beta.models.security.HostEntityMapping>();
com.microsoft.graph.beta.models.security.HostEntityMapping hostEntityMapping = new com.microsoft.graph.beta.models.security.HostEntityMapping();
hostEntityMapping.setDeviceIdColumn("DeviceId");
hostEntityMapping.setNameColumn("DeviceName");
hosts.add(hostEntityMapping);
entityMappings.setHosts(hosts);
LinkedList<com.microsoft.graph.beta.models.security.FileEntityMapping> files = new LinkedList<com.microsoft.graph.beta.models.security.FileEntityMapping>();
com.microsoft.graph.beta.models.security.FileEntityMapping fileEntityMapping = new com.microsoft.graph.beta.models.security.FileEntityMapping();
fileEntityMapping.setNameColumn("FileName");
fileEntityMapping.setSha1Column("SHA1");
fileEntityMapping.setSha256Column("SHA256");
files.add(fileEntityMapping);
entityMappings.setFiles(files);
alertTemplate.setEntityMappings(entityMappings);
LinkedList<com.microsoft.graph.beta.models.security.MitreTactic> tactics = new LinkedList<com.microsoft.graph.beta.models.security.MitreTactic>();
com.microsoft.graph.beta.models.security.MitreTactic mitreTactic = new com.microsoft.graph.beta.models.security.MitreTactic();
mitreTactic.setTactic("Execution");
LinkedList<com.microsoft.graph.beta.models.security.MitreTechnique> techniques = new LinkedList<com.microsoft.graph.beta.models.security.MitreTechnique>();
com.microsoft.graph.beta.models.security.MitreTechnique mitreTechnique = new com.microsoft.graph.beta.models.security.MitreTechnique();
mitreTechnique.setTechnique("T1059.001");
techniques.add(mitreTechnique);
mitreTactic.setTechniques(techniques);
tactics.add(mitreTactic);
alertTemplate.setTactics(tactics);
detectionAction.setAlertTemplate(alertTemplate);
detectionRule.setDetectionAction(detectionAction);
com.microsoft.graph.models.security.DetectionRule result = graphClient.security().rules().detectionRules().post(detectionRule);


```