---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.AuditLogQuery auditLogQuery = new com.microsoft.graph.beta.models.security.AuditLogQuery();
auditLogQuery.setOdataType("#microsoft.graph.security.auditLogQuery");
auditLogQuery.setDisplayName("String");
OffsetDateTime filterStartDateTime = OffsetDateTime.parse("String (timestamp)");
auditLogQuery.setFilterStartDateTime(filterStartDateTime);
OffsetDateTime filterEndDateTime = OffsetDateTime.parse("String (timestamp)");
auditLogQuery.setFilterEndDateTime(filterEndDateTime);
auditLogQuery.setKeywordFilter("String");
LinkedList<String> operationFilters = new LinkedList<String>();
operationFilters.add("String");
auditLogQuery.setOperationFilters(operationFilters);
LinkedList<String> userPrincipalNameFilters = new LinkedList<String>();
userPrincipalNameFilters.add("String");
auditLogQuery.setUserPrincipalNameFilters(userPrincipalNameFilters);
LinkedList<String> ipAddressFilters = new LinkedList<String>();
ipAddressFilters.add("String");
auditLogQuery.setIpAddressFilters(ipAddressFilters);
LinkedList<String> objectIdFilters = new LinkedList<String>();
objectIdFilters.add("String");
auditLogQuery.setObjectIdFilters(objectIdFilters);
LinkedList<String> administrativeUnitIdFilters = new LinkedList<String>();
administrativeUnitIdFilters.add("String");
auditLogQuery.setAdministrativeUnitIdFilters(administrativeUnitIdFilters);
auditLogQuery.setStatus(com.microsoft.graph.beta.models.security.AuditLogQueryStatus.NotStarted);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("recordTypeFilter", "String");
additionalData.put("serviceFilter", "String");
auditLogQuery.setAdditionalData(additionalData);
com.microsoft.graph.models.security.AuditLogQuery result = graphClient.security().auditLog().queries().post(auditLogQuery);


```