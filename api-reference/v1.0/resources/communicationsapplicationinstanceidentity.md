--- 
title: "communicationsApplicationInstanceIdentity resource type"
description: "Represents the identity of an instance of an application."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# communicationsApplicationInstanceIdentity resource type

Namespace: microsoft.graph

Represents the identity of an instance of an application. An application instance is a resource account created by [New-CsOnlineApplicationInstance](/powershell/module/skype/new-csonlineapplicationinstance). For example, you might have multiple call queue application instances that are all backed by the same Microsoft Entra ID application. These application instances are represented in Microsoft Entra ID by disabled user accounts.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| displayName | String | The display name associated with the resource account. Inherited from **identity**. |
| hidden | Boolean | `True` if the participant shouldn't be shown in other participants' rosters. |
| id | String | The object ID of the resource account user in Microsoft Entra ID. Inherited from **identity**. |
| tenantId | String | The tenant ID of the application. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.communicationsApplicationInstanceIdentity",
  "optionalProperties": [
    "displayName",
    "tenantId",
    "hidden"
  ],
} -->
```json
{
  "displayName": "String",
  "hidden": "Boolean",
  "id": "String (identifier)",
  "tenantId": "String"
}
```
