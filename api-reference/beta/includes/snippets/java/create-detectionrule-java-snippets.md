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
com.microsoft.graph.beta.models.security.QueryCondition queryCondition = new com.microsoft.graph.beta.models.security.QueryCondition();
queryCondition.setQueryText("DeviceProcessEvents | where InitiatingProcessFileName in~ ('winword.exe','excel.exe','outlook.exe') | where FileName == 'powershell.exe' | where ProcessCommandLine has '-enc'");
detectionRule.setQueryCondition(queryCondition);
com.microsoft.graph.beta.models.security.RuleSchedule schedule = new com.microsoft.graph.beta.models.security.RuleSchedule();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("frequency", "PT1H");
schedule.setAdditionalData(additionalData);
detectionRule.setSchedule(schedule);
com.microsoft.graph.beta.models.security.DetectionAction detectionAction = new com.microsoft.graph.beta.models.security.DetectionAction();
com.microsoft.graph.beta.models.security.AlertTemplate alertTemplate = new com.microsoft.graph.beta.models.security.AlertTemplate();
alertTemplate.setTitle("Suspicious encoded PowerShell from Office");
alertTemplate.setDescription("An Office app launched an encoded PowerShell command, which may indicate phishing-driven code execution.");
alertTemplate.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alertTemplate.setRecommendedActions("Investigate the parent Office document, isolate the device, and review the user's recent email activity.");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
 entityMappings = new ();
LinkedList<Object> accounts = new LinkedList<Object>();
 property = new ();
property.setNameColumn("AccountName");
property.setNtDomainColumn("AccountDomain");
property.setSidColumn("AccountSid");
accounts.add(property);
entityMappings.setAccounts(accounts);
LinkedList<Object> hosts = new LinkedList<Object>();
 property1 = new ();
property1.setDeviceIdColumn("DeviceId");
property1.setNameColumn("DeviceName");
hosts.add(property1);
entityMappings.setHosts(hosts);
LinkedList<Object> files = new LinkedList<Object>();
 property2 = new ();
property2.setNameColumn("FileName");
property2.setSha1Column("SHA1");
property2.setSha256Column("SHA256");
files.add(property2);
entityMappings.setFiles(files);
additionalData1.put("entityMappings", entityMappings);
LinkedList<Object> tactics = new LinkedList<Object>();
 property3 = new ();
property3.setTactic("Execution");
LinkedList<Object> techniques = new LinkedList<Object>();
 property4 = new ();
property4.setTechnique("T1059.001");
techniques.add(property4);
property3.setTechniques(techniques);
tactics.add(property3);
additionalData1.put("tactics", tactics);
alertTemplate.setAdditionalData(additionalData1);
detectionAction.setAlertTemplate(alertTemplate);
detectionRule.setDetectionAction(detectionAction);
HashMap<String, Object> additionalData2 = new HashMap<String, Object>();
additionalData2.put("description", "Detects encoded PowerShell processes launched by Office applications, a common phishing payload pattern.");
additionalData2.put("status", "enabled");
detectionRule.setAdditionalData(additionalData2);
com.microsoft.graph.models.security.DetectionRule result = graphClient.security().rules().detectionRules().post(detectionRule);


```