---
title: "companySubscriptions resource type"
description: "Represents subscriptions for a tenant."
ms.localizationpriority: medium
author: "arp19690"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# companySubscriptions resource type

Namespace: microsoft.graph

Represents subscriptions for a tenant.

Inherits from [directoryObject](directoryobject.md).

## Methods

| Method                                                           | Return Type                                                | Description                                                                 |
| :--------------------------------------------------------------- | :--------------------------------------------------------- | :-------------------------------------------------------------------------- |
| [Get companySubscriptions](../api/companysubscriptions-get.md)   | [companySubscriptions](companysubscriptions.md)            | Get a specific commercial subscription that an organization has acquired.   |
| [List companySubscriptions](../api/companysubscriptions-list.md) | [companySubscriptions](companysubscriptions.md) collection | Get the list of commercial subscriptions that an organization has acquired. |

## Properties

| Property               | Type                                             | Description                                                                                             |
| ---------------------- | ------------------------------------------------ | ------------------------------------------------------------------------------------------------------- |
| createdDateTime        | DateTime                                         | The date and time when this subscription was created.                                                   |
| commerceSubscriptionId | String                                           | The ID of this subscription in the commerce system.                                                     |
| id                     | String                                           | The unique ID for this subscription. Inherited from [directoryObject](directoryobject.md).              |
| isTrial                | Boolean                                          | The trial status of the subscription.                                                                   |
| nextLifecycleDateTime  | DateTime                                         | The date and time of the next lifecycle event for this subscription.                                    |
| serviceStatus          | [servicePlanInfo](serviceplaninfo.md) collection | The provisioning status of each service associated with this subscription.                              |
| skuId                  | String                                           | The object ID of the SKU associated with this subscription.                                             |
| skuPartNumber          | String                                           | The SKU associated with this subscription.                                                              |
| status                 | String                                           | The status of this subscription. Possible values are: `Enabled`, `Expired`, `Suspended`.                |
| totalLicenses          | Int32                                            | The number of seats included in this subscription.                                                      |
| ownerId                | String                                           | The Object Id of the account admin.                                                                     |
| ownerTenantId          | String                                           | When a partner tenant creates a subscription on a customer tenant, `ownerTenantId` is used to track it. |
| ownerType              | String                                           | This helps identify which entity `ownerId` belongs to. For e.g. "User".                                 |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.companySubscriptions"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "commerceSubscriptionId": "String",
  "id": "String (identifier)",
  "isTrial": "Boolean",
  "nextLifecycleDateTime": "String (timestamp)",
  "serviceStatus": [{ "@odata.type": "microsoft.graph.servicePlanInfo" }],
  "skuId": "String",
  "skuPartNumber": "String",
  "status": "String",
  "totalLicenses": "Int32",
  "ownerTenantId": "String",
  "ownerId": "String",
  "ownerType": "String"
}
```
