---
title: "companySubscription resource type"
description: "Represents subscriptions for a tenant."
ms.localizationpriority: medium
author: "arp19690"
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# companySubscription resource type

Namespace: microsoft.graph

Represents a commercial subscription for a tenant. Use the values of **skuId** and **serviceStatus** > **servicePlanId** to assign licenses to unassigned users and groups through the [user: assignLicense](../api/user-assignlicense.md) and [group: assignLicense](../api/group-assignlicense.md) APIs respectively.

Inherits from [entity](entity.md).

## Methods

| Method                                         | Return Type                                              | Description                                                                 |
| :--------------------------------------------- | :------------------------------------------------------- | :-------------------------------------------------------------------------- |
| [Get](../api/companysubscription-get.md)       | [companySubscription](companysubscription.md)            | Get a specific commercial subscription that an organization acquired.   |
| [List](../api/directory-list-subscriptions.md) | [companySubscription](companysubscription.md) collection | Get the list of commercial subscriptions that an organization acquired. |

## Properties

| Property               | Type                                             | Description                                                                                                                                                                                                                                                                                                                 |
| ---------------------- | ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| commerceSubscriptionId | String                                           | The ID of this subscription in the commerce system. Alternate key.                                                                                                                                                                                                                                                          |
| createdDateTime        | DateTimeOffset                                   | The date and time when this subscription was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                                                                                     |
| id                     | String                                           | The unique ID for this subscription. Inherited from [entity](entity.md).                                                                                                                                                                                                                                                    |
| isTrial                | Boolean                                          | Whether the subscription is a free trial or purchased.                                                                                                                                                                                                                                                                      |
| nextLifecycleDateTime  | DateTimeOffset                                   | The date and time when the subscription will move to the next state (as defined by the **status** property) if not renewed by the tenant. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| ownerId                | String                                           | The object ID of the account admin.                                                                                                                                                                                                                                                                                         |
| ownerTenantId          | String                                           | The unique identifier for the Microsoft partner tenant that created the subscription on a customer tenant.                                                                                                                                                                                                                  |
| ownerType              | String                                           | Indicates the entity that **ownerId** belongs to, for example, "User".                                                                                                                                                                                                                                                      |
| serviceStatus          | [servicePlanInfo](serviceplaninfo.md) collection | The provisioning status of each service included in this subscription.                                                                                                                                                                                                                                               |
| skuId                  | String                                           | The object ID of the SKU associated with this subscription.                                                                                                                                                                                                                                                                 |
| skuPartNumber          | String                                           | The SKU associated with this subscription.                                                                                                                                                                                                                                                                                  |
| status                 | String                                           | The status of this subscription. The possible values are: `Enabled`, `Deleted`, `Suspended`, `Warning`, `LockedOut`.                                                                                                                                                                                                            |
| totalLicenses          | Int32                                            | The number of licenses included in this subscription.                                                                                                                                                                                                                                                                          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.companySubscription"
}-->

```json
{
  "commerceSubscriptionId": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isTrial": "Boolean",
  "nextLifecycleDateTime": "String (timestamp)",
  "ownerId": "String",
  "ownerTenantId": "String",
  "ownerType": "String",
  "serviceStatus": [{ "@odata.type": "microsoft.graph.servicePlanInfo" }],
  "skuId": "String",
  "skuPartNumber": "String",
  "status": "String",
  "totalLicenses": "Int32"
}
```
