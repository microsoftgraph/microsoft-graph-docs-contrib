---
title: "onPremisesProvisioningError resource type"
description: "Represents directory synchronization errors for the user, group, or organizational contact entities when synchronizing on-premises directories to Microsoft Entra ID."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "dhruvinrshah"
ms.date: 03/21/2024
---

# onPremisesProvisioningError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents directory synchronization errors for the [user](user.md), [group](group.md), or [organizational contact](orgcontact.md) entities when synchronizing on-premises directories to Microsoft Entra ID.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|category|String| Category of the provisioning error. Note: Currently, there is only one possible value. Possible value: *PropertyConflict* - indicates a property value is not unique. Other objects contain the same value for the property. |
|occurredDateTime|DateTimeOffset| The date and time at which the error occurred. |
|propertyCausingError|String| Name of the directory property causing the error. Current possible values: *UserPrincipalName* or *ProxyAddress* |
|value|String| Value of the property causing the error. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesProvisioningError"
}-->

```json
{
  "category": "String",
  "occurredDateTime": "String (timestamp)",
  "propertyCausingError": "String",
  "value": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "onPremisesProvisioningError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
