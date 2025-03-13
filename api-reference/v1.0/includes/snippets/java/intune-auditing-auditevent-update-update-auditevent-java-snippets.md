---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AuditEvent auditEvent = new AuditEvent();
auditEvent.setOdataType("#microsoft.graph.auditEvent");
auditEvent.setDisplayName("Display Name value");
auditEvent.setComponentName("Component Name value");
AuditActor actor = new AuditActor();
actor.setOdataType("microsoft.graph.auditActor");
actor.setAuditActorType("Audit Actor Type value");
LinkedList<String> userPermissions = new LinkedList<String>();
userPermissions.add("User Permissions value");
actor.setUserPermissions(userPermissions);
actor.setApplicationId("Application Id value");
actor.setApplicationDisplayName("Application Display Name value");
actor.setUserPrincipalName("User Principal Name value");
actor.setServicePrincipalName("Service Principal Name value");
actor.setIpAddress("Ip Address value");
actor.setUserId("User Id value");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("type", "Type value");
actor.setAdditionalData(additionalData);
auditEvent.setActor(actor);
auditEvent.setActivity("Activity value");
OffsetDateTime activityDateTime = OffsetDateTime.parse("2016-12-31T23:59:51.6363086-08:00");
auditEvent.setActivityDateTime(activityDateTime);
auditEvent.setActivityType("Activity Type value");
auditEvent.setActivityOperationType("Activity Operation Type value");
auditEvent.setActivityResult("Activity Result value");
auditEvent.setCorrelationId(UUID.fromString("52effe71-fe71-52ef-71fe-ef5271feef52"));
LinkedList<AuditResource> resources = new LinkedList<AuditResource>();
AuditResource auditResource = new AuditResource();
auditResource.setOdataType("microsoft.graph.auditResource");
auditResource.setDisplayName("Display Name value");
LinkedList<AuditProperty> modifiedProperties = new LinkedList<AuditProperty>();
AuditProperty auditProperty = new AuditProperty();
auditProperty.setOdataType("microsoft.graph.auditProperty");
auditProperty.setDisplayName("Display Name value");
auditProperty.setOldValue("Old Value value");
auditProperty.setNewValue("New Value value");
modifiedProperties.add(auditProperty);
auditResource.setModifiedProperties(modifiedProperties);
auditResource.setAuditResourceType("Audit Resource Type value");
auditResource.setResourceId("Resource Id value");
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("type", "Type value");
auditResource.setAdditionalData(additionalData1);
resources.add(auditResource);
auditEvent.setResources(resources);
auditEvent.setCategory("Category value");
AuditEvent result = graphClient.deviceManagement().auditEvents().byAuditEventId("{auditEvent-id}").patch(auditEvent);


```