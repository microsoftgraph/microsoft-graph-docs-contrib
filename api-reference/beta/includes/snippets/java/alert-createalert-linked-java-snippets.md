---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritycreatealert.CreateAlertPostRequestBody createAlertPostRequestBody = new com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritycreatealert.CreateAlertPostRequestBody();
com.microsoft.graph.beta.models.security.CreateAlertInput createAlertInput = new com.microsoft.graph.beta.models.security.CreateAlertInput();
createAlertInput.setTitle("Suspicious PowerShell activity");
createAlertInput.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.Medium);
createAlertInput.setDescription("PowerShell script execution was identified during analyst triage.");
createAlertInput.setCategory("Execution");
createAlertInput.setRecommendedActions("Review the script contents and isolate the affected device.");
LinkedList<String> mitreTechniques = new LinkedList<String>();
mitreTechniques.add("T1059.001");
createAlertInput.setMitreTechniques(mitreTechniques);
createAlertInput.setLinkToIncident(42L);
createAlertInput.setIsExcludedFromCorrelation(false);
LinkedList<com.microsoft.graph.beta.models.security.EntityDefinition> entityDefinitions = new LinkedList<com.microsoft.graph.beta.models.security.EntityDefinition>();
com.microsoft.graph.beta.models.security.EntityDefinition entityDefinition = new com.microsoft.graph.beta.models.security.EntityDefinition();
entityDefinition.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.Device);
entityDefinition.setEntityIdentifier("deviceId");
entityDefinition.setIdentifierValue("d1234567-abcd-4f01-8abc-890123456789");
entityDefinition.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Impacted);
entityDefinitions.add(entityDefinition);
createAlertInput.setEntityDefinitions(entityDefinitions);
createAlertPostRequestBody.setCreateAlertInput(createAlertInput);
var result = graphClient.security().alertsV2().microsoftGraphSecurityCreateAlert().post(createAlertPostRequestBody);


```