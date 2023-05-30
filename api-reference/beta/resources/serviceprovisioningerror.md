---
title: "serviceProvisioningError resource type"
description: "Represents an abstract base type for service provisioning errors."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "directory-management"
author: "PaulEkirapa"
---

# serviceProvisioningError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for service provisioning errors which are information published by a federated service describing a non-transient, service-specific error for the [user](user.md), [group](group.md), or [organizational contact](orgcontact.md) entities regarding the properties or link from an object that requires an explicit administrator action to resolve.

Base type of [serviceProvisioningXmlError](../resources/serviceprovisioningxmlerror.md).

## Properties

| Property        | Type           | Description                                                                                          |
| :-------------- | :------------- | :--------------------------------------------------------------------------------------------------- |
| createdDateTime | DateTimeOffset | The date and time at which the error occurred.                                                       |
| isResolved      | Boolean        | Indicates whether the Error has been attended to.                                                    |
| serviceInstance | String         | Qualified service instance (e.g., "SharePoint/Dublin") that published the service error information. |

## JSON representation

The following is a JSON representation of the resource.

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
