---
title: "ediscoveryCaseMember resource type"
description: "Represents an eDiscovery case member."
author: "kylefk"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryCaseMember resource type

Namespace: microsoft.graph.security

Represents an eDiscovery case member. In the context of eDiscovery, case members are granted access to an [ediscoveryCase](../resources/security-ediscoverycase.md) and its data. These cases are accessible to case members via the eDiscovery UX portal or through the eDiscovery case Microsoft Graph APIs. Case members can be one of two types: a user or a role group. For more information, see [Add or remove members from an eDiscovery (premium) case](/purview/ediscovery-add-or-remove-members-from-a-case).

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-ediscoverycasemember-list.md)|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) collection|Get a list of the ediscoveryCaseMember objects and their properties.|
|[Add](../api/security-ediscoverycasemember-post.md)|[microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md)|Add a case member.|
|[Remove](../api/security-ediscoverycasemember-delete.md)|None|Remove a case member.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|recipientType|microsoft.graph.security.recipientType|Specifies the recipient type of the eDiscovery case member. The possible values are: `user`, `roleGroup`, `unknownFutureValue`.|
|id|String|The ID of the eDiscovery case member.|
|displayName|String|The display name of the eDiscovery case member. Allowed only for case members of type **roleGroup**. |
|smtpAddress|String|The smtp address of the eDiscovery case member. Allowed only for case members of type **user**. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCaseMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseMember",
  "id": "String (identifier)",
  "recipientType": "'@odata.type': 'microsoft.graph.security.recipientType'",
  "displayName": "String",
  "smtpAddress": "String"
}
```