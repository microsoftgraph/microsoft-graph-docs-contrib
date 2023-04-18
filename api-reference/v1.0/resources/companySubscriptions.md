---
title: "companySubscriptions resource type"
description: "Represents the subscriptions for a tenant."
ms.localizationpriority: medium
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# companySubscriptions resource type

Namespace: microsoft.graph

Only the read operation is supported on companySubscriptions; create, update, and delete are not supported. Query filter expressions are supported. Inherits from [directoryObject](directoryobject.md).

## Methods

| Method                                                           | Return Type                                                | Description                                                                 |
| :--------------------------------------------------------------- | :--------------------------------------------------------- | :-------------------------------------------------------------------------- |
| [Get companySubscriptions](../api/companySubscriptions-get.md)   | [companySubscriptions](companySubscriptions.md)            | Get a specific commercial subscription that an organization has acquired.   |
| [List companySubscriptions](../api/companySubscriptions-list.md) | [companySubscriptions](companySubscriptions.md) collection | Get the list of commercial subscriptions that an organization has acquired. |

## Properties

| Property                | Type                                             | Description                                                                |
| ----------------------- | ------------------------------------------------ | -------------------------------------------------------------------------- |
| `createdDateTime`       | `DateTime`                                       | The date that this subscription was created.                               |
| `isTrial`               | `Boolean`                                        | The trial status of subscription.                                          |
| `nextLifecycleDateTime` | `DateTime`                                       | The date of the next lifecycle event for this subscription.                |
| `id`                    | `String`                                         | The unique ID of this subscription.                                        |
| `ocpSubscriptionId`     | `String`                                         | The ID of this subscription in the commerce system.                        |
| `serviceStatus`         | [servicePlanInfo](serviceplaninfo.md) collection | The provisioning status of each service associated with this subscription. |
| `skuId`                 | `String`                                         | The object ID of the SKU associated with this subscription.                |
| `skuPartNumber`         | `String`                                         | The SKU associated with this subscription.                                 |
| `status`                | `String`                                         | The status of this subscription (Enabled, Expired, or Suspended).          |
| `totalLicenses`         | `Int32`                                          | The number of seats included in this subscription.                         |

## Relationships

None

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.companySubscriptions"
}-->

```json
{
  "createdDateTime": "2023-01-01T00:00:00Z",
  "id": "860697e3-b0aa-4196-a6c6-7ec361ed58f7",
  "isTrial": false,
  "nextLifecycleDateTime": "2023-02-01T00:00:00Z",
  "ocpSubscriptionId": "f9c1ea2d-2c6e-4717-8c3b-7130812d70ba",
  "serviceStatus": [
    {
      "servicePlanId": "8b8269e5-f841-416c-ab3a-f5dfb9737986",
      "servicePlanName": "MyPlanName",
      "provisioningStatus": "Success",
      "appliesTo": "User"
    }
  ],
  "skuId": "0816ccb9-3785-4d19-bf78-6c53e2106509",
  "skuPartNumber": "MyPartNumber",
  "status": "Enabled",
  "totalLicenses": 25
}
```