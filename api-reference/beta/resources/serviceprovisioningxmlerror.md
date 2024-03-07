---
title: "serviceProvisioningXmlError resource type"
description: "Represents information published by a federated service describing a non-transient, service-specific error regarding the properties or link from an object that is represented as an xml string"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "PaulEkirapa"
---

# serviceProvisioningXmlError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information published by a federated service that describes a nontransient, service specific error for the [user](user.md), [group](group.md), or [organizational contact](orgcontact.md) entities regarding the properties or links of objects(for example user memberships). These errors are represented as an xml string.

Inherits from [serviceProvisioningError](../resources/serviceprovisioningerror.md).

## Properties

| Property        | Type           | Description                                                                                          |
| :-------------- | :------------- | :--------------------------------------------------------------------------------------------------- |
| createdDateTime | DateTimeOffset | The date and time at which the error occurred.                                                       |
| errorDetail     | String         | Error Information published by the Federated Service as an xml string.                              |
| isResolved      | Boolean        | Indicates whether the Error has been attended to.                                                    |
| serviceInstance | String         | Qualified service instance (for example, "SharePoint/Dublin") that published the service error information. |

## JSON representation

Here's a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.serviceProvisioningXmlError"
}-->

```json
{
  "createdDateTime": "2020-01-31T17:45:18.00",
  "errorDetail": "<a/>",
  "isResolved": false,
  "serviceInstance": "exchange/NAMPRD09-001-01"
}
```
