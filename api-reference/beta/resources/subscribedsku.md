---
title: "subscribedSku resource type"
description: "Represents the subscribed SKU type."
ms.localizationpriority: medium
author: "frank-masuelli"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/24/2024
---

# subscribedSku resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a service SKU that a company is subscribed to. Use the values of **skuId** and **servicePlans** > **servicePlanId** to assign licenses to unassigned users and groups through the [user: assignLicense](../api/user-assignlicense.md) and [group: assignLicense](../api/group-assignlicense.md) APIs respectively.

For more information about subscriptions and licenses, see [Subscriptions, licenses, accounts, and tenants for Microsoft's cloud offerings](/microsoft-365/enterprise/subscriptions-licenses-accounts-and-tenants-for-microsoft-cloud-offerings).

Inherits from [directoryObject](directoryobject.md).

## Methods

| Method                                             | Return Type                                  | Description                                                                 |
| :------------------------------------------------- | :------------------------------------------- | :-------------------------------------------------------------------------- |
| [Get](../api/subscribedsku-get.md)   | [subscribedSku](subscribedsku.md)            | Get a specific commercial subscription that an organization has acquired.   |
| [List](../api/subscribedsku-list.md) | [subscribedSku](subscribedsku.md) collection | Get the list of commercial subscriptions that an organization has acquired. |

## Properties

| Property         | Type                                             | Description                                                                                                                                                                                                                                                     |
| :--------------- | :----------------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| accountId        | String                                           | The unique ID of the account this SKU belongs to.                                                                                                                                                                                                               |
| accountName      | String                                           | The name of the account this SKU belongs to.                                                                                                                                                                                                                    |
| appliesTo        | String                                           | The target class for this SKU. Only SKUs with target class `User` are assignable. Possible values are: `User`, `Company`.                                                                                                                                                  |
| capabilityStatus | String                                           | `Enabled` indicates that the **prepaidUnits** property has at least one unit that is enabled. `LockedOut` indicates that the customer canceled their subscription. Possible values are: `Enabled`, `Warning`, `Suspended`, `Deleted`, `LockedOut`. |
| consumedUnits    | Int32                                            | The number of licenses that have been assigned.                                                                                                                                                                                                                 |
| id               | String                                           | The unique identifier for the subscribed SKU object. Key, not nullable.                                                                                                                                                                                         |
| prepaidUnits     | [licenseUnitsDetail](licenseunitsdetail.md)      | Information about the number and status of prepaid licenses.                                                                                                                                                                                                    |
| servicePlans     | [servicePlanInfo](serviceplaninfo.md) collection | Information about the service plans that are available with the SKU. Not nullable                                                                                                                                                                               |
| skuId            | String                                           | The unique identifier (GUID) for the service SKU.                                                                                                                                                                                                               |
| skuPartNumber    | String                                           | The SKU part number; for example, `AAD_PREMIUM` or `RMSBASIC`. To get a list of commercial subscriptions that an organization has acquired, see [List subscribedSkus](../api/subscribedsku-list.md).                                                            |
| subscriptionIds | String collection                                | A list of all [subscription IDs](../resources/companysubscription.md) associated with this SKU.                                                                                                                                                                                                        |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.subscribedSku"
}-->

```json
{
  "accountId": "String",
  "accountName": "String",
  "appliesTo": "String",
  "capabilityStatus": "String",
  "consumedUnits": "Int32",
  "id": "String (identifier)",
  "prepaidUnits": { "@odata.type": "microsoft.graph.licenseUnitsDetail" },
  "servicePlans": [{ "@odata.type": "microsoft.graph.servicePlanInfo" }],
  "skuId": "String",
  "skuPartNumber": "String",
  "subscriptionIds": ["String"]
}
```

## Related content

- [Product names and service plan identifiers for licensing](/azure/active-directory/enterprise-users/licensing-service-plan-reference)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "subscribedSku resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
