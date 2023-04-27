---
title: "onPremisesExtensionAttributes resource type"
description: "The **onPremisesExtensionAttributes** property of the user entity contains fifteen custom extension attribute properties. "
ms.localizationpriority: medium
author: "yyuank"
ms.prod: "users"
doc_type: resourcePageType
---

# onPremisesExtensionAttributes resource type

Namespace: microsoft.graph

The return type of the **onPremisesExtensionAttributes** property of the [user](user.md) object and **extensionAttributes** property of the [device](device.md) object. Returns fifteen custom extension attribute properties.

On the [user](user.md) entity and for an **onPremisesSyncEnabled** user, the source of authority for this set of properties is the on-premises Active Directory which is synchronized to Azure AD, and is read-only. For a cloud-only user (where **onPremisesSyncEnabled** is `false` or `null`), these properties can be set during [creation](../api/user-post-users.md) or [update](../api/user-update.md). If a cloud-only user was previously synced from on-premises Active Directory, these properties cannot be managed via the Microsoft Graph API. Instead, they can be managed through the Exchange Admin Center or the Exchange Online V2 module in PowerShell.

The **extensionAttributes** property of the [device](device.md) entity is managed only in Azure AD during device [creation](../api/device-post-devices.md) or [update](../api/device-update.md).

> **Note:** These extension attributes are also known as Exchange custom attributes 1-15.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|extensionAttribute1|String| First customizable extension attribute. |
|extensionAttribute2|String| Second customizable extension attribute. |
|extensionAttribute3|String| Third customizable extension attribute. |
|extensionAttribute4|String| Fourth customizable extension attribute. |
|extensionAttribute5|String| Fifth customizable extension attribute. |
|extensionAttribute6|String| Sixth customizable extension attribute. |
|extensionAttribute7|String| Seventh customizable extension attribute. |
|extensionAttribute8|String| Eighth customizable extension attribute. |
|extensionAttribute9|String| Ninth customizable extension attribute. |
|extensionAttribute10|String| Tenth customizable extension attribute. |
|extensionAttribute11|String| Eleventh customizable extension attribute. |
|extensionAttribute12|String| Twelfth customizable extension attribute. |
|extensionAttribute13|String| Thirteenth customizable extension attribute. |
|extensionAttribute14|String| Fourteenth customizable extension attribute. |
|extensionAttribute15|String| Fifteenth customizable extension attribute. |

## JSON representation

The following is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesExtensionAttributes"
}-->


```json
{
      "extensionAttribute1": "string",
      "extensionAttribute2": "string",
      "extensionAttribute3": "string",
      "extensionAttribute4": "string",
      "extensionAttribute5": "string",
      "extensionAttribute6": "string",
      "extensionAttribute7": "string",
      "extensionAttribute8": "string",
      "extensionAttribute9": "string",
      "extensionAttribute10": "string",
      "extensionAttribute11": "string",
      "extensionAttribute12": "string",
      "extensionAttribute13": "string",
      "extensionAttribute14": "string",
      "extensionAttribute15": "string"
  }

```



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesExtensionAttributes resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->