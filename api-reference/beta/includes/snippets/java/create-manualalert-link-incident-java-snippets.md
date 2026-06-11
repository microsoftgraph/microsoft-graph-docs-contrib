---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.Alert alert = new com.microsoft.graph.beta.models.security.Alert();
alert.setOdataType("#microsoft.graph.security.manualAlert");
alert.setTitle("Malicious file detected on device");
alert.setDescription("Sandbox analysis revealed malicious behavior in downloaded file.");
alert.setCategory("Execution");
alert.setSeverity(com.microsoft.graph.beta.models.security.AlertSeverity.High);
alert.setRecommendedActions("Isolate device, remove file, scan for additional IOCs");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("linkToIncident", 28282);
LinkedList<Object> entityDefinitions = new LinkedList<Object>();
 property = new ();
property.setEntityType("file");
property.setEntityIdentifier("sha256");
property.setIdentifierValue("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855");
property.setRole("related");
entityDefinitions.add(property);
 property1 = new ();
property1.setEntityType("device");
property1.setEntityIdentifier("deviceName");
property1.setIdentifierValue("DESKTOP-VICTIM01");
property1.setRole("impacted");
entityDefinitions.add(property1);
additionalData.put("entityDefinitions", entityDefinitions);
alert.setAdditionalData(additionalData);
com.microsoft.graph.models.security.Alert result = graphClient.security().alertsV2().post(alert);


```