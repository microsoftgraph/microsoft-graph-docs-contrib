---
title: "serviceProvisioningError resource type"
description: "Represents an abstract base type for service provisioning errors."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "PaulEkirapa"
ms.date: 04/03/2024
---

# serviceProvisioningError resource type

Namespace: microsoft.graph

An abstract base type that represents information published by a federated service that describes a nontransient, service specific error for the [user](user.md), [group](group.md), or [organizational contact](orgcontact.md) that requires an explicit administrator action to resolve.

Base type of [serviceProvisioningXmlError](../resources/serviceprovisioningxmlerror.md).

## Properties

| Property        | Type           | Description                                                                                          |
| :-------------- | :------------- | :--------------------------------------------------------------------------------------------------- |
| createdDateTime | DateTimeOffset | The date and time at which the error occurred.                                                       |
| isResolved      | Boolean        | Indicates whether the error has been attended to.                                                    |
| serviceInstance | String         | Qualified service instance (for example, "SharePoint/Dublin") that published the service error information. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.serviceProvisioningError"
}-->

```json
{
  "createdDateTime": "2020-01-31T17:45:18.00",
  "isResolved": false,
  "serviceInstance": "exchange/NAMPRD09-001-01"
}
```
