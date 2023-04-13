--- 
title: "communicationsApplicationInstanceIdentity resource type"
description: "Represents the identity of an instance of an application."
author: "rahulva-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# communicationsApplicationInstanceIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the identity of an instance of an application. An application instance is a resource account created by [**New-CsOnlineApplicationInstance**](/powershell/module/skype/new-csonlineapplicationinstance). For example, you might have multiple Call Queue application instances that are all backed by the same Azure Active Directory application. These application instances are represented in Azure Active Directory by disabled user accounts.

Inherits from [identity](identity.md).

## Properties

| Property                       | Type                        | Description                                                                                                                                       |
| :----------------------------- | :---------------------------| :-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | String | Inherited from **identity**. The object ID of the resource account user in Azure Active Directory. |
| displayName | String | Inherited from **identity**. The display name associated with the resource account. |
| tenantId | String | The application's tenant ID. |
| hidden | Boolean | True if the participant would not like to be shown in other participants' rosters. |

## JSON representation

The following is a JSON representation of the resource.

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
  "id": "String",
  "displayName": "String",
  "tenantId": "String",
  "hidden": false
}
```
