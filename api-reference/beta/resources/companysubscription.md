---
title: "companySubscription resource type"
description: "Represents subscriptions for a tenant."
ms.localizationpriority: medium
author: "arp19690"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# companySubscription resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a commercial subscription for a tenant.

Inherits from [entity](entity.md).

## Methods

| Method                                                              | Return Type                                                | Description                                                                 |
| :------------------------------------------------------------------ | :--------------------------------------------------------- | :-------------------------------------------------------------------------- |
| [Get companySubscription](../api/companysubscription-get.md)      | [companySubscription](companysubscription.md)            | Get a specific commercial subscription that an organization has acquired.   |
| [List companySubscriptions](../api/directory-list-subscriptions.md) | [companySubscription](companysubscription.md) collection | Get the list of commercial subscriptions that an organization has acquired. |

## Properties

| Property               | Type                                             | Description                                                                                                                                                                                                                                            |
| ---------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| commerceSubscriptionId | String                                           | The ID of this subscription in the commerce system. Alternate key.                                                                                                                                                                                                   |
| createdDateTime        | DateTimeOffset                                   | The date and time when this subscription was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.                |
| id                     | String                                           | The unique ID for this subscription. Inherited from [entity](entity.md).                                                                                                                                                                               |
| isTrial                | Boolean                                          | Whether the subscription is a free trial or purchased.                                                                                                                                                                                                                  |
| nextLifecycleDateTime  | DateTimeOffset                                   | The date and time when the subscription will move to the next state (as defined by the **status** property) if not renewed by the tenant. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| ownerId                | String                                           | The object ID of the account admin.                                                                                                                                                                                                                    |
| ownerTenantId          | String                                           | The unique identifier for the Microsoft partner tenant that created the subscription on a customer tenant.                                                                                                                                                   |
| ownerType              | String                                           | Indicates the entity that **ownerId** belongs to, for example, "User".                                                                                                                                                                                 |
| serviceStatus          | [servicePlanInfo](serviceplaninfo.md) collection | The provisioning status of each service that's included in this subscription.                                                                                                                                                                             |
| skuId                  | String                                           | The object ID of the SKU associated with this subscription.                                                                                                                                                                                            |
| skuPartNumber          | String                                           | The SKU associated with this subscription.                                                                                                                                                                                                             |
| status                 | String                                           | The status of this subscription. Possible values are: `Enabled`, `Expired`, `Suspended`, `Warning`, `LockedOut`.                                                                                                                                                               |
| totalLicenses          | Int32                                            | The number of seats included in this subscription.                                                                                                                                                                                                     |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.companySubscription"
}-->

```json
{
  "commerceSubscriptionId": "String",
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
