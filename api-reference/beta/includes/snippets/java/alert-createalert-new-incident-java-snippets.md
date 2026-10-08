---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritycreatealert.CreateAlertPostRequestBody createAlertPostRequestBody = new com.microsoft.graph.beta.security.alerts_v2.microsoftgraphsecuritycreatealert.CreateAlertPostRequestBody();
com.microsoft.graph.beta.models.security.CreateAlertInput createAlertInput = new com.microsoft.graph.beta.models.security.CreateAlertInput();
createAlertInput.setTitle("Unauthorized access attempt");
createAlertInput.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
createAlertInput.setDescription("Multiple failed login attempts from an unusual location.");
createAlertInput.setCategory("InitialAccess");
LinkedList<String> mitreTechniques = new LinkedList<String>();
mitreTechniques.add("T1078");
createAlertInput.setMitreTechniques(mitreTechniques);
createAlertInput.setIsExcludedFromCorrelation(false);
LinkedList<com.microsoft.graph.beta.models.security.EntityDefinition> entityDefinitions = new LinkedList<com.microsoft.graph.beta.models.security.EntityDefinition>();
com.microsoft.graph.beta.models.security.EntityDefinition entityDefinition = new com.microsoft.graph.beta.models.security.EntityDefinition();
entityDefinition.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.User);
entityDefinition.setEntityIdentifier("userPrincipalName");
entityDefinition.setIdentifierValue("admin@contoso.com");
entityDefinition.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Impacted);
entityDefinitions.add(entityDefinition);
com.microsoft.graph.beta.models.security.EntityDefinition entityDefinition1 = new com.microsoft.graph.beta.models.security.EntityDefinition();
entityDefinition1.setEntityType(com.microsoft.graph.beta.models.security.ManualAlertEntityType.Ip);
entityDefinition1.setEntityIdentifier("address");
entityDefinition1.setIdentifierValue("198.51.100.42");
entityDefinition1.setRole(com.microsoft.graph.beta.models.security.EntityDefinitionInputRole.Related);
entityDefinitions.add(entityDefinition1);
createAlertInput.setEntityDefinitions(entityDefinitions);
createAlertPostRequestBody.setCreateAlertInput(createAlertInput);
var result = graphClient.security().alertsV2().microsoftGraphSecurityCreateAlert().post(createAlertPostRequestBody);


```