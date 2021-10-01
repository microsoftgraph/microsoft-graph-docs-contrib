---
title: "serviceHealthIssue resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# serviceHealthIssue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceHealthIssues](../api/servicehealthissue-list.md)|[serviceHealthIssue](../resources/servicehealthissue.md) collection|Get a list of the [serviceHealthIssue](../resources/servicehealthissue.md) objects and their properties.|
|[Create serviceHealthIssue](../api/servicehealthissue-create.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Create a new [serviceHealthIssue](../resources/servicehealthissue.md) object.|
|[Get serviceHealthIssue](../api/servicehealthissue-get.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Read the properties and relationships of a [serviceHealthIssue](../resources/servicehealthissue.md) object.|
|[Update serviceHealthIssue](../api/servicehealthissue-update.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Update the properties of a [serviceHealthIssue](../resources/servicehealthissue.md) object.|
|[Delete serviceHealthIssue](../api/servicehealthissue-delete.md)|None|Deletes a [serviceHealthIssue](../resources/servicehealthissue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|serviceHealthClassificationType|**TODO: Add Description**. The possible values are: `advisory`, `incident`, `unknownFutureValue`.|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|endDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|feature|String|**TODO: Add Description**|
|featureGroup|String|**TODO: Add Description**|
|highImpact|Boolean|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|impactDescription|String|**TODO: Add Description**|
|isResolved|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|origin|serviceHealthOrigin|**TODO: Add Description**. The possible values are: `microsoft`, `thirdParty`, `customer`, `unknownFutureValue`.|
|posts|[serviceHealthIssuePost](../resources/servicehealthissuepost.md) collection|**TODO: Add Description**|
|service|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|
|status|serviceHealthStatus|**TODO: Add Description**. The possible values are: `serviceOperational`, `investigating`, `restoringService`, `verifyingService`, `serviceRestored`, `postIncidentReviewPublished`, `serviceDegradation`, `serviceInterruption`, `extendedRecovery`, `falsePositive`, `investigationSuspended`, `resolved`, `mitigatedExternal`, `mitigated`, `resolvedExternal`, `confirmed`, `reported`, `unknownFutureValue`.|
|title|String|**TODO: Add Description** Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealthIssue",
  "baseType": "microsoft.graph.serviceAnnouncementBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssue",
  "id": "String (identifier)",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "classification": "String",
  "feature": "String",
  "featureGroup": "String",
  "highImpact": "Boolean",
  "impactDescription": "String",
  "isResolved": "Boolean",
  "origin": "String",
  "posts": [
    {
      "@odata.type": "microsoft.graph.serviceHealthIssuePost"
    }
  ],
  "service": "String",
  "status": "String"
}
```

