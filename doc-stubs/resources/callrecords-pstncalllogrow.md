---
title: "pstnCallLogRow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# pstnCallLogRow resource type

Namespace: microsoft.graph.callRecords

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calleeNumber|String|**TODO: Add Description**|
|callerNumber|String|**TODO: Add Description**|
|callId|String|**TODO: Add Description**|
|callType|String|**TODO: Add Description**|
|charge|Decimal|**TODO: Add Description**|
|conferenceId|String|**TODO: Add Description**|
|connectionCharge|Decimal|**TODO: Add Description**|
|currency|String|**TODO: Add Description**|
|destinationContext|String|**TODO: Add Description**|
|destinationName|String|**TODO: Add Description**|
|duration|Int32|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|inventoryType|String|**TODO: Add Description**|
|licenseCapability|String|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|tenantCountryCode|String|**TODO: Add Description**|
|usageCountryCode|String|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userId|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.pstnCallLogRow"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecords.pstnCallLogRow",
  "id": "String (identifier)",
  "callId": "String",
  "userId": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "duration": "Integer",
  "charge": "Decimal",
  "callType": "String",
  "currency": "String",
  "calleeNumber": "String",
  "usageCountryCode": "String",
  "tenantCountryCode": "String",
  "connectionCharge": "Decimal",
  "callerNumber": "String",
  "destinationContext": "String",
  "destinationName": "String",
  "conferenceId": "String",
  "licenseCapability": "String",
  "inventoryType": "String"
}
```

