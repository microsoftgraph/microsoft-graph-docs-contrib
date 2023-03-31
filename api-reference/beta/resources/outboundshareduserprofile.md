---
title: "outboundSharedUserProfile resource type"
description: "Represents an Azure AD user that has shared their profile data with an external Azure AD tenant using B2B direct connect."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# outboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD user that has shared their profile data with an external Azure AD tenant using B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List outboundSharedUserProfiles](../api/directory-list-outboundshareduserprofiles.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md) collection|Retrieve all outboundSharedUserProfiles in the directory.|
|[Get outboundSharedUserProfile](../api/outboundshareduserprofile-get.md)|[outboundSharedUserProfile](../resources/outboundshareduserprofile.md) collection|Retrieve a specific outboundSharedUserProfile from the directory.|
|[List tenantReferences](../api/outboundshareduserprofile-list-tenants.md)|[tenantReferences](../resources/tenantreference.md) collection| Get all Azure AD tenants that a user has shared their data with as an Azure AD B2B direct connect user.|
|[Remove personal data](../api/tenantreference-removepersonaldata.md)|None| Create a request to remove all personal data associated with a remote user in an external Azure AD tenant.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| userId | String | The object id of the external user. Read-only. |

## Relationships

|Property|Type|Description|
|:---|:---|:---|
| tenants | [tenantReference](../resources/tenantreference.md) collection | The collection of external Azure AD tenants that the user has shared profile data with. Read-only. |

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
