---
title: "inboundSharedUserProfile resource type"
description: "Represents an Azure AD user from an external Azure AD tenant whose profile data is shared with the current tenant using B2B direct connect."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# inboundSharedUserProfile resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD user from an external Azure AD tenant whose profile data is shared with the current tenant using B2B direct connect.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get inboundSharedUserProfile](../api/inboundshareduserprofile-get.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md)|Read the properties of an inboundSharedUserProfile.|
|[List inboundSharedUserProfile](../api/inboundshareduserprofile-list.md)|[inboundSharedUserProfile](../resources/inboundshareduserprofile.md) collection|Retrieve all inboundSharedUserProfiles in the directory.|
|[Remove personal data](../api/inboundshareduserprofile-removepersonaldata.md)|None|Creates a request to remove all personal data associated with the inboundSharedUserProfile from the directory.|
|[Export personal data](../api/inboundshareduserprofile-exportpersonaldata.md)|None|Creates a request to export all personal data associated with the inboundSharedUserProfile and stores it in the specified location. The storage location must be an Azure Storage Account.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| userId | String | The object identifier of the external user in their home Azure AD tenant. Read-only. Key.|
| userPrincipalName | String | The user principal name (UPN) of the external user in their home Azure AD tenant. Read-only. |
| displayName | String | The name displayed in the address book for the user at the time when the sharing record was created. Read-only. |
| homeTenantId | String | The identifier of the home Azure AD tenant for the external user. Read-only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
