---
title: "emailAppUsageUserDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# emailAppUsageUserDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List emailAppUsageUserDetails](../api/emailappusageuserdetail-list.md)|[emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) collection|Get a list of the [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) objects and their properties.|
|[Get emailAppUsageUserDetail](../api/emailappusageuserdetail-get.md)|[emailAppUsageUserDetail](../resources/emailappusageuserdetail.md)|Read the properties and relationships of an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object.|
|[Update emailAppUsageUserDetail](../api/emailappusageuserdetail-update.md)|[emailAppUsageUserDetail](../resources/emailappusageuserdetail.md)|Update the properties of an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object.|
|[Delete emailAppUsageUserDetail](../api/emailappusageuserdetail-delete.md)|None|Deletes an [emailAppUsageUserDetail](../resources/emailappusageuserdetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletedDate|Date|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|imap4App|String collection|**TODO: Add Description**|
|isDeleted|Boolean|**TODO: Add Description**|
|lastActivityDate|Date|**TODO: Add Description**|
|mailForMac|String collection|**TODO: Add Description**|
|otherForMobile|String collection|**TODO: Add Description**|
|outlookForMac|String collection|**TODO: Add Description**|
|outlookForMobile|String collection|**TODO: Add Description**|
|outlookForWeb|String collection|**TODO: Add Description**|
|outlookForWindows|String collection|**TODO: Add Description**|
|pop3App|String collection|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|smtpApp|String collection|**TODO: Add Description**|
|userPrincipalName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailAppUsageUserDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailAppUsageUserDetail",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "userPrincipalName": "String",
  "displayName": "String",
  "isDeleted": "Boolean",
  "deletedDate": "Date",
  "lastActivityDate": "Date",
  "mailForMac": [
    "String"
  ],
  "outlookForMac": [
    "String"
  ],
  "outlookForWindows": [
    "String"
  ],
  "outlookForMobile": [
    "String"
  ],
  "otherForMobile": [
    "String"
  ],
  "outlookForWeb": [
    "String"
  ],
  "pop3App": [
    "String"
  ],
  "imap4App": [
    "String"
  ],
  "smtpApp": [
    "String"
  ],
  "reportPeriod": "String"
}
```

