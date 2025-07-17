---
title: "inboundSharedUserProfile resource type"
description: "Represents a Microsoft Entra user from an external Microsoft Entra tenant whose profile data is shared with the current tenant using B2B direct connect."
author: "yyuank"
ms.reviewer: mapamu, iamut
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# inboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra user from an external Microsoft Entra tenant whose profile data is shared with the current tenant using B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/inboundshareduserprofile-get.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|Read the properties of an inboundSharedUserProfile.|
|[List](../api/directory-list-inboundshareduserprofiles.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md) collection|Retrieve all inboundSharedUserProfiles in the directory.|
|[Remove personal data](../api/inboundshareduserprofile-removepersonaldata.md)|None|Create a request to remove all personal data associated with the inboundSharedUserProfile from the directory.|
|[Export personal data](../api/inboundshareduserprofile-exportpersonaldata.md)|None|Create a request to export all personal data associated with the inboundSharedUserProfile and stores it in the specified location. The storage location must be an Azure Storage Account.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| displayName | String | The name displayed in the address book for the user at the time when the sharing record was created. Read-only. |
| homeTenantId | String | The home tenant id of the external user. Read-only. |
| userId | String | The object id of the external user. Read-only. |
| userPrincipalName | String | The user principal name (UPN) of the external user. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "userId",
  "@odata.type": "microsoft.graph.inboundSharedUserProfile",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.inboundSharedUserProfile",
  "userId": "String",
  "userPrincipalName": "String",
  "displayName": "String",
  "homeTenantId": "String"
}
```
