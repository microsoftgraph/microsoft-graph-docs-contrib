---
title: "userCredentialUsageDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# userCredentialUsageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userCredentialUsageDetails](../api/usercredentialusagedetails-list.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md) collection|Get a list of the [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) objects and their properties.|
|[Create userCredentialUsageDetails](../api/usercredentialusagedetails-create.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md)|Create a new [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object.|
|[Get userCredentialUsageDetails](../api/usercredentialusagedetails-get.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md)|Read the properties and relationships of a [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object.|
|[Update userCredentialUsageDetails](../api/usercredentialusagedetails-update.md)|[userCredentialUsageDetails](../resources/usercredentialusagedetails.md)|Update the properties of a [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object.|
|[Delete userCredentialUsageDetails](../api/usercredentialusagedetails-delete.md)|None|Deletes a [userCredentialUsageDetails](../resources/usercredentialusagedetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authMethod|usageAuthMethod|**TODO: Add Description**. Possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobileCall`, `fido`, `appPassword`, `unknownFutureValue`.|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|failureReason|String|**TODO: Add Description**|
|feature|featureType|**TODO: Add Description**. Possible values are: `registration`, `reset`, `unknownFutureValue`.|
|id|String|**TODO: Add Description**|
|isSuccess|Boolean|**TODO: Add Description**|
|userDisplayName|String|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userCredentialUsageDetails",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userCredentialUsageDetails",
  "id": "String (identifier)",
  "feature": "String",
  "userPrincipalName": "String",
  "userDisplayName": "String",
  "isSuccess": "Boolean",
  "authMethod": "String",
  "failureReason": "String",
  "eventDateTime": "String (timestamp)"
}
```

