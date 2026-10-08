---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.ManualAlert alert = new com.microsoft.graph.beta.models.security.ManualAlert();
alert.setOdataType("#microsoft.graph.security.manualAlert");
alert.setTitle("Suspicious login from TOR exit node");
alert.setDescription("User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.");
alert.setCategory("InitialAccess");
alert.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alert.setRecommendedActions("Reset user credentials, enable MFA, review recent user activity");
LinkedList<String> mitreTechniques = new LinkedList<String>();
mitreTechniques.add("T1078");
alert.setMitreTechniques(mitreTechniques);
LinkedList<com.microsoft.graph.beta.models.security.EntityDefinitionInput> entityDefinitions = new LinkedList<com.microsoft.graph.beta.models.security.EntityDefinitionInput>();
com.microsoft.graph.beta.models.security.EntityDefinitionInput entityDefinitionInput = new com.microsoft.graph.beta.models.security.EntityDefinitionInput();
entityDefinitionInput.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.User);
entityDefinitionInput.setEntityIdentifier("userPrincipalName");
entityDefinitionInput.setIdentifierValue("john.doe@contoso.com");
entityDefinitionInput.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Impacted);
entityDefinitions.add(entityDefinitionInput);
com.microsoft.graph.beta.models.security.EntityDefinitionInput entityDefinitionInput1 = new com.microsoft.graph.beta.models.security.EntityDefinitionInput();
entityDefinitionInput1.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.Ip);
entityDefinitionInput1.setEntityIdentifier("address");
entityDefinitionInput1.setIdentifierValue("185.220.101.50");
entityDefinitionInput1.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Related);
entityDefinitions.add(entityDefinitionInput1);
alert.setEntityDefinitions(entityDefinitions);
com.microsoft.graph.models.security.Alert result = graphClient.security().alertsV2().post(alert);


```