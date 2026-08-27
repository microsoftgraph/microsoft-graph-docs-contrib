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

Represents a security incident case with incident details, classification, severity, investigation, and impacted asset information. This resource derives from [case](../resources/security-casemanagement-case.md) and participates in the polymorphic `/security/caseManagement/cases` collection. Incident cases are created by the service; you can't create new **incidentCase** resources with API requests. Some incident case properties are synchronized with the corresponding incident.

For cast segments in URLs, use the full type name, for example `microsoft.graph.security.caseManagement.incidentCase`.

## Methods
This resource is part of a polymorphic collection managed by the [case resource](../resources/security-casemanagement-case.md) base type. Operations are performed through the base type endpoints.

Creating **incidentCase** objects with `POST /security/caseManagement/cases` isn't supported.

Use the base type [Update](../api/security-casemanagement-case-update.md) method to update **assignedTo**, **classification**, **customFields**, **determination**, **displayName**, **dueDateTime**, **severity**, and **status**.

The **assignedTo**, **classification**, **determination**, **displayName**, **severity**, and **status** properties are synchronized with the underlying incident. A PATCH request that includes any of these properties returns `202 Accepted` with no response body. The changes might take a few minutes to synchronize and appear on the case.

The **customFields** and **dueDateTime** properties aren't synchronized. A PATCH request that updates only these properties returns `200 OK` with the updated **incidentCase** object in the response body. A request that includes properties from both groups returns `202 Accepted` with no response body.

Updating and deleting comment activities isn't supported for **incidentCase** objects.

To use a supported query option with a property declared only on **incidentCase**, cast the base cases collection to `microsoft.graph.security.caseManagement.incidentCase`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiAgentIds|String collection|The list of AI agent identifiers associated with the incident. Supports `$filter`.|
|alertCounts|[microsoft.graph.security.caseManagement.alertCounts](../resources/security-casemanagement-alertcounts.md)|A summary of alert counts grouped by severity and status. Supports `$filter`.|
|alertPolicyIds|String collection|The list of alert policy identifiers associated with the incident. Supports `$filter`.|
|assignedTo|String|The user assigned to investigate the incident case. Supports `$filter` and `$orderby`.|
|associatedThreatIds|String collection|The list of threat identifiers associated with the incident. Supports `$filter`.|
|categories|String collection|The incident categories. Supports `$filter`.|
|classification|[microsoft.graph.security.caseManagement.incidentClassification](#incidentclassification-values)|The classification assigned to the incident. Supports `$filter`.|
|cloudScopes|String collection|The cloud scopes associated with the incident. Supports `$filter`.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|customFields|[microsoft.graph.security.caseManagement.customFieldValues](../resources/security-casemanagement-customfieldvalues.md)|Tenant-defined custom field values keyed by the exact **displayName** of each custom field definition. The property and its dynamic fields don't support `$filter`. Inherited from [case](../resources/security-casemanagement-case.md).|
|dataSensitivityLabels|String collection|The data sensitivity labels associated with the incident. Supports `$filter`.|
|dataStreams|String collection|The data streams associated with the incident. Supports `$filter`.|
|detectionSources|String collection|The detection sources that identified the incident. Supports `$filter`.|
|determination|[microsoft.graph.security.caseManagement.incidentDetermination](#incidentdetermination-values)|The determination assigned to the incident. Supports `$filter`.|
|displayName|String|The display name of the incident case. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` and `$orderby`.|
|dueDateTime|DateTimeOffset|The target completion date and time for the incident case. Supports `$filter`.|
|emailNotificationRecipients|String collection|The email notification recipients for the incident case. Supports `$filter`.|
|firstEventTime|DateTimeOffset|The date and time of the first event in the incident. Supports `$filter`.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md). Supports `$filter` and `$orderby`.|
|impactedAssets|[microsoft.graph.security.caseManagement.impactedAssetsCounts](../resources/security-casemanagement-impactedassetscounts.md)|A summary of impacted asset counts for the incident. Supports `$filter`.|
|incidentId|Int64|The Microsoft Security incident identifier. Supports `$filter`.|
|incidentWebUrl|String|The URL for the incident in the Microsoft Defender portal. Supports `$filter`.|
|investigation|[microsoft.graph.security.caseManagement.investigation](../resources/security-casemanagement-investigation.md)|A summary of investigation details associated with the incident. Supports `$filter`.|
|investigationIds|String collection|The list of investigation identifiers associated with the incident. Supports `$filter`.|
|investigationStates|String collection|The list of investigation states associated with the incident. Supports `$filter`.|
|lastEventTime|DateTimeOffset|The date and time of the most recent event in the incident. Supports `$filter`.|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md). Supports `$filter` and `$orderby`.|
|machineGroupIds|String collection|The list of machine group identifiers associated with the incident. Supports `$filter`.|
|osPlatforms|String collection|The operating system platforms associated with the incident. Supports `$filter`.|
|policyNames|String collection|The policy names associated with the incident. Supports `$filter`.|
|priorityScore|Int32|The priority score assigned to the incident. Supports `$filter`.|
|productNames|String collection|The product names associated with the incident. Supports `$filter`.|
|serviceSources|String collection|The service sources associated with the incident. Supports `$filter`.|
|severity|[microsoft.graph.security.caseManagement.incidentSeverity](#incidentseverity-values)|The severity assigned to the incident. Supports `$filter`.|
|status|String|The tenant-defined lifecycle status of the incident case. Use a **displayName** value returned in the status tree by [List statuses](../api/security-casemanagement-casetypeconfiguration-list-statuses.md) from `/security/caseManagement/caseTypeConfigurations/incidentCase/statuses`. Inherited from [case](../resources/security-casemanagement-case.md). Supports `$filter` (`eq`).|
|summary|String|A summary of the incident. Supports `$filter`.|
|systemTags|String collection|The system tags associated with the incident. Supports `$filter`.|
|topRiskScore|Int32|The top risk score associated with the incident. Supports `$filter`.|
|workspaceIds|String collection|The list of workspace identifiers associated with the incident. Supports `$filter`.|

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
  "customFields": {"@odata.type": "#microsoft.graph.security.caseManagement.customFieldValues"},
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
  "alertCounts": {"@odata.type": "#microsoft.graph.security.caseManagement.alertCounts"},
  "impactedAssets": {"@odata.type": "#microsoft.graph.security.caseManagement.impactedAssetsCounts"},
  "investigation": {"@odata.type": "#microsoft.graph.security.caseManagement.investigation"},
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
