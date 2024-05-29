---
title: "agreement resource type"
description: "Represents a tenant's customizable terms of use agreement that is created and managed with Microsoft Entra ID Governance."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
---

# agreement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant's customizable terms of use agreement that is created and managed with Microsoft Entra ID Governance. You can use the following methods to create and manage the [Microsoft Entra Terms of Use feature](#related-content) according to your scenario.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/termsofusecontainer-post-agreements.md) | [agreement](agreement.md) | Create a new agreement by posting to the agreement collection. |
| [List](../api/termsofusecontainer-list-agreements.md) | [agreement](agreement.md) collection | Get an agreement object collection. |
| [Get](../api/agreement-get.md) | [agreement](agreement.md) | Read properties and relationships of an agreement object. |
| [Update](../api/agreement-update.md) | None | Update an agreement object. |
| [Delete](../api/agreement-delete.md) | None | Delete an agreement object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display name of the agreement. The display name is used for internal tracking of the agreement but isn't shown to end users who view the agreement. Supports `$filter` (`eq`).|
|id|String| Read-only. Supports `$filter` (`eq`).|
|isPerDeviceAcceptanceRequired|Boolean|This setting enables you to require end users to accept this agreement on every device that they're accessing it from. The end user is required to register their device in Microsoft Entra ID, if they haven't already done so. Supports `$filter` (`eq`).|
|isViewingBeforeAcceptanceRequired|Boolean|Indicates whether the user has to expand the agreement before accepting. Supports `$filter` (`eq`).|
|termsExpiration|[termsExpiration](termsexpiration.md)| Expiration schedule and frequency of agreement for all users.  Supports `$filter` (`eq`).|
|userReacceptRequiredFrequency|Duration|The duration after which the user must reaccept the terms of use. The value is represented in ISO 8601 format for durations.|


## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|acceptances|[agreementAcceptance](agreementacceptance.md) collection|Read-only. Information about acceptances of this agreement.|
|file|[agreementFile](agreementfile.md) | Default PDF linked to this agreement.|
|files|[agreementFileLocalization](agreementfilelocalization.md) collection| PDFs linked to this agreement. **Note:** This property is in the process of being deprecated. Use the  **file** property instead.|


## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agreement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agreement",
  "id": "String (identifier)",
  "displayName": "String",
  "termsExpiration": {
    "@odata.type": "microsoft.graph.termsExpiration"
  },
  "userReacceptRequiredFrequency": "String (duration)",
  "isViewingBeforeAcceptanceRequired": "Boolean",
  "isPerDeviceAcceptanceRequired": "Boolean"
}
```

## Related content

+ [Microsoft Entra Terms of Use](/azure/active-directory/conditional-access/terms-of-use) 
