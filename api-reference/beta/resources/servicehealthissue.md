---
title: "serviceHealthIssue resource type"
description: "An entity resource type inherited from serviceAnnouncementBase, to represent an issue happened for a service. The service health issue could be a service incident or service advisory. e.g. "Exchange mailbox service is down" is a service incident; "User may have seen a delay while receiving emails" is a service advisory."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceHealthIssue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An entity resource type inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md), to represent an issue happened for a service. The service health issue could be a service incident or service advisory. e.g. "Exchange mailbox service is down" is a service incident; "User may have seen a delay while receiving emails" is a service advisory.

Inherits from [serviceAnnouncementBase](../resources/serviceannouncementbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceHealthIssues](../api/servicehealthissue-list.md)|[serviceHealthIssue](../resources/servicehealthissue.md) collection|Get a list of the service issues that affected the tenant. Returns a list of  [serviceHealthIssue](../resources/servicehealthissue.md) objects and their properties.|
|[Get serviceHealthIssue](../api/servicehealthissue-get.md)|[serviceHealthIssue](../resources/servicehealthissue.md)|Get the specified service issue for the tenant. Returns a [serviceHealthIssue](../resources/servicehealthissue.md) object.|
|[Get incidentReport](../api/servicehealthissue-incidentreport.md)|Stream|Get IncidentReport document of a specified service health issue|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|classification|serviceHealthClassificationType|The type of service health issue. Possible values are: `Advisory`, `Incident`, `unknownFutureValue`.|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|More details about service health issue that don't need to be filter based properties are put in this key value pair collection. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|endDateTime|DateTimeOffset|The end time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|feature|String|The name of feature for the service issue|
|featureGroup|String|The name of feature group for the service issue|
|highImpact|Boolean|The value to tell whether service issue has high impact or not|
|id|String|The id of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|impactDescription|String|The description of the service issue impact.|
|isResolved|Boolean|Boolean value to tell if the issue is resolved. Used by filter.|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|origin|serviceHealthOrigin|The origin of the service issue, tells the cause of the issue is from Microsoft, or third party or customer. Possible values are: `Microsoft`, `ThirdParty`, `Customer`, `unknownFutureValue`.|
|posts|[serviceHealthIssuePost](../resources/servicehealthissuepost.md) collection|Collection of historical posts for the service issue|
|service|String|The affected service by the service issue|
|startDateTime|DateTimeOffset|The start time of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|
|status|serviceHealthStatus|The status of the service issue, tells how the problem affected the service. Possible values are: `ServiceOperational`, `Investigating`, `RestoringService`, `VerifyingService`, `ServiceRestored`, `PostIncidentReviewPublished`, `ServiceDegradation`, `ServiceInterruption`, `ExtendedRecovery`, `FalsePositive`, `InvestigationSuspended`, `Resolved`, `MitigatedExternal`, `Mitigated`, `ResolvedExternal`, `Confirmed`, `Reported`, `UnknownFutureValue`.|
|title|String|The title of the service issue. Inherited from [serviceAnnouncementBase](../resources/serviceannouncementbase.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealthIssue",
  "baseType": "m365ServiceHealth.readServices.commercialWebService.models.serviceAnnouncementBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssue",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "id": "String (identifier)",
  "impactDescription": "String",
  "classification": "String",
  "origin": "String",
  "posts": [
    {
      "@odata.type": "microsoft.graph.serviceHealthIssuePost"
    }
  ],
  "status": "String",
  "service": "String",
  "feature": "String",
  "featureGroup": "String",
  "isResolved": "Boolean",
  "highImpact": "Boolean"
}
```

