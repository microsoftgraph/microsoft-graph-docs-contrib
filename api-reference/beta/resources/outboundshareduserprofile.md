---
title: "outboundSharedUserProfile resource type"
description: "Represents a Microsoft Entra user that has shared their profile data with an external Microsoft Entra tenant using B2B direct connect."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# outboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra user that has shared their profile data with an external Microsoft Entra tenant using B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List outboundSharedUserProfiles](../api/directory-list-outboundshareduserprofiles.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md) collection|Retrieve all outboundSharedUserProfiles in the directory.|
|[Get outboundSharedUserProfile](../api/outboundshareduserprofile-get.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md) collection|Retrieve a specific outboundSharedUserProfile from the directory.|
|[List tenantReferences](../api/outboundshareduserprofile-list-tenants.md)|[tenantReferences](../resources/tenantreference.md) collection| Get all Microsoft Entra tenants that a user has shared their data with as a Microsoft Entra B2B direct connect user.|
|[Remove personal data](../api/tenantreference-removepersonaldata.md)|None| Create a request to remove all personal data associated with a remote user in an external Microsoft Entra tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| userId | String | The object id of the external user. Read-only. |

## Relationships

|Property|Type|Description|
|:---|:---|:---|
| tenants | [tenantReference](../resources/tenantreference.md) collection | The collection of external Microsoft Entra tenants that the user has shared profile data with. Read-only. |

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "userId",
  "@odata.type": "microsoft.graph.outboundSharedUserProfile",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.inboundSharedUserProfile",
  "userId": "String"
}
```
