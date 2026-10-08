---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.ManualAlert alert = new com.microsoft.graph.beta.models.security.ManualAlert();
alert.setOdataType("#microsoft.graph.security.manualAlert");
alert.setTitle("Malicious file detected on device");
alert.setDescription("Sandbox analysis revealed malicious behavior in downloaded file.");
alert.setCategory("Execution");
alert.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alert.setRecommendedActions("Isolate device, remove file, scan for additional IOCs");
alert.setLinkToIncident(28282L);
LinkedList<com.microsoft.graph.beta.models.security.EntityDefinitionInput> entityDefinitions = new LinkedList<com.microsoft.graph.beta.models.security.EntityDefinitionInput>();
com.microsoft.graph.beta.models.security.EntityDefinitionInput entityDefinitionInput = new com.microsoft.graph.beta.models.security.EntityDefinitionInput();
entityDefinitionInput.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.File);
entityDefinitionInput.setEntityIdentifier("sha256");
entityDefinitionInput.setIdentifierValue("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855");
entityDefinitionInput.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Related);
entityDefinitions.add(entityDefinitionInput);
com.microsoft.graph.beta.models.security.EntityDefinitionInput entityDefinitionInput1 = new com.microsoft.graph.beta.models.security.EntityDefinitionInput();
entityDefinitionInput1.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.Device);
entityDefinitionInput1.setEntityIdentifier("deviceName");
entityDefinitionInput1.setIdentifierValue("DESKTOP-VICTIM01");
entityDefinitionInput1.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Impacted);
entityDefinitions.add(entityDefinitionInput1);
alert.setEntityDefinitions(entityDefinitions);
com.microsoft.graph.models.security.Alert result = graphClient.security().alertsV2().post(alert);


```