---
title: "incidentCase resource type"
description: "Represents a security incident case with incident details, classification, severity, investigation, and impacted asset information."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentCase resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a security incident case with incident details, classification, severity, investigation, and impacted asset information. This resource derives from [case](../resources/security-casemanagement-case.md) and participates in the polymorphic `/security/caseManagement/cases` collection. Incident cases are created by the service; you can't create new **incidentCase** resources with API requests. Incident case properties are synced with the corresponding incident.

Inherited from [case](../resources/security-casemanagement-case.md).

## Methods
This resource is part of a polymorphic collection managed by the [case resource](../resources/security-casemanagement-case.md) base type. Operations are performed through the base type endpoints.

Creating **incidentCase** objects with `POST /security/caseManagement/cases` isn't supported.

Use the base type [Update](../api/security-casemanagement-case-update.md) method to update **classification**, **determination**, **displayName**, **emailNotificationRecipients**, **priorityScore**, **severity**, **status**, and **summary**. A successful PATCH request for an **incidentCase** returns a `202 Accepted` response code.

Updating and deleting comment activities isn't supported for **incidentCase** objects.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiAgentIds|String collection|The list of AI agent identifiers associated with the incident.|
|alertCounts|[microsoft.graph.security.caseManagement.alertCounts](../resources/security-casemanagement-alertcounts.md)|A summary of alert counts grouped by severity and status.|
|alertPolicyIds|String collection|The list of alert policy identifiers associated with the incident.|
|assignedTo|String|The user assigned to investigate the incident case.|
|associatedThreatIds|String collection|The list of threat identifiers associated with the incident.|
|categories|String collection|The incident categories.|
|classification|[microsoft.graph.security.caseManagement.incidentClassification](#incidentclassification-values)|The classification assigned to the incident.|
|cloudScopes|String collection|The cloud scopes associated with the incident.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` (`eq`, `ne`, `ge`, `le`) and `$orderby`.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by custom field identifier. Inherited from [case](../resources/security-casemanagement-case.md).|
|dataSensitivityLabels|String collection|The data sensitivity labels associated with the incident.|
|dataStreams|String collection|The data streams associated with the incident.|
|description|String|The description of the incident case.|
|detectionSources|String collection|The detection sources that identified the incident.|
|determination|[microsoft.graph.security.caseManagement.incidentDetermination](#incidentdetermination-values)|The determination assigned to the incident.|
|displayName|String|The display name of the incident case. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|dueDateTime|DateTimeOffset|The target completion date and time for the incident case.|
|emailNotificationRecipients|String collection|The email notification recipients for the incident case.|
|firstEventTime|DateTimeOffset|The date and time of the first event in the incident.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|impactedAssets|[microsoft.graph.security.caseManagement.impactedAssetsCounts](../resources/security-casemanagement-impactedassetscounts.md)|A summary of impacted asset counts for the incident.|
|incidentId|Int64|The Microsoft Security incident identifier.|
|incidentWebUrl|String|The URL for the incident in the Microsoft Defender portal.|
|investigation|[microsoft.graph.security.caseManagement.investigation](../resources/security-casemanagement-investigation.md)|A summary of investigation details associated with the incident.|
|investigationIds|String collection|The list of investigation identifiers associated with the incident.|
|investigationStates|String collection|The list of investigation states associated with the incident.|
|lastEventTime|DateTimeOffset|The date and time of the most recent event in the incident.|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` (`eq`, `ne`, `ge`, `le`) and `$orderby`.|
|machineGroupIds|String collection|The list of machine group identifiers associated with the incident.|
|osPlatforms|String collection|The operating system platforms associated with the incident.|
|policyNames|String collection|The policy names associated with the incident.|
|priorityScore|Int32|The priority score assigned to the incident.|
|productNames|String collection|The product names associated with the incident.|
|redirectCaseId|Int64|The case identifier to which this case redirects when merged.|
|redirectIncidentId|Int64|The incident identifier to which this incident redirects when merged.|
|serviceSources|String collection|The service sources associated with the incident.|
|severity|[microsoft.graph.security.caseManagement.incidentSeverity](#incidentseverity-values)|The severity assigned to the incident.|
|status|String|The lifecycle status of the incident case. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` (`eq`, `ne`) and `$orderby`.|
|summary|String|A summary of the incident.|
|systemTags|String collection|The system tags associated with the incident.|
|topRiskScore|Int32|The top risk score associated with the incident.|
|workspaceIds|String collection|The list of workspace identifiers associated with the incident.|

### incidentClassification values

|Member|Description|
|:---|:---|
|unknown|The classification is unknown.|
|falsePositive|The incident is a false positive.|
|truePositive|The incident is a true positive.|
|informationalExpectedActivity|The incident is expected informational activity.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### incidentDetermination values

|Member|Description|
|:---|:---|
|unknown|The determination is unknown.|
|apt|Advanced persistent threat.|
|malware|Malware.|
|securityPersonnel|Activity by security personnel.|
|securityTesting|Security testing.|
|unwantedSoftware|Unwanted software.|
|other|Other malicious activity.|
|multiStagedAttack|Multi-stage attack.|
|compromisedAccount|Compromised account.|
|phishing|Phishing.|
|maliciousUserActivity|Malicious user activity.|
|notMalicious|Not malicious.|
|notEnoughDataToValidate|Not enough data to validate.|
|confirmedActivity|Confirmed expected activity.|
|lineOfBusinessApplication|Line-of-business application activity.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### incidentSeverity values

|Member|Description|
|:---|:---|
|unknown|The severity is unknown.|
|informational|Informational severity.|
|low|Low severity.|
|medium|Medium severity.|
|high|High severity.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[microsoft.graph.security.caseManagement.activity](../resources/security-casemanagement-activity.md) collection|The timeline of comments and audit events associated with the case. Inherited from [case](../resources/security-casemanagement-case.md).|
|attachments|[microsoft.graph.security.caseManagement.attachment](../resources/security-casemanagement-attachment.md) collection|Evidence files and metadata associated with the case. Inherited from [case](../resources/security-casemanagement-case.md).|
|relations|[microsoft.graph.security.caseManagement.relation](../resources/security-casemanagement-relation.md) collection|Links from the case to related security resources. Inherited from [case](../resources/security-casemanagement-case.md).|
|tasks|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) collection|Tasks used to track work required to resolve the case. Inherited from [case](../resources/security-casemanagement-case.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.incidentCase",
  "baseType": "microsoft.graph.security.caseManagement.case",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.incidentCase",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "status": "String",
  "customFields": {
    "@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"
  },
  "description": "String",
  "assignedTo": "String",
  "emailNotificationRecipients": [
    "String"
  ],
  "dueDateTime": "String (timestamp)",
  "incidentId": "Integer",
  "classification": "String",
  "determination": "String",
  "severity": "String",
  "summary": "String",
  "priorityScore": "Integer",
  "firstEventTime": "String (timestamp)",
  "lastEventTime": "String (timestamp)",
  "alertCounts": {
    "@odata.type": "#microsoft.graph.security.caseManagement.alertCounts"
  },
  "impactedAssets": {
    "@odata.type": "#microsoft.graph.security.caseManagement.impactedAssetsCounts"
  },
  "investigation": {
    "@odata.type": "#microsoft.graph.security.caseManagement.investigation"
  },
  "topRiskScore": "Integer",
  "detectionSources": [
    "String"
  ],
  "serviceSources": [
    "String"
  ],
  "productNames": [
    "String"
  ],
  "categories": [
    "String"
  ],
  "workspaceIds": [
    "String"
  ],
  "policyNames": [
    "String"
  ],
  "alertPolicyIds": [
    "String"
  ],
  "dataSensitivityLabels": [
    "String"
  ],
  "cloudScopes": [
    "String"
  ],
  "dataStreams": [
    "String"
  ],
  "aiAgentIds": [
    "String"
  ],
  "redirectIncidentId": "Integer",
  "redirectCaseId": "Integer",
  "investigationIds": [
    "String"
  ],
  "investigationStates": [
    "String"
  ],
  "associatedThreatIds": [
    "String"
  ],
  "osPlatforms": [
    "String"
  ],
  "machineGroupIds": [
    "String"
  ],
  "incidentWebUrl": "String",
  "systemTags": [
    "String"
  ]
}
```
