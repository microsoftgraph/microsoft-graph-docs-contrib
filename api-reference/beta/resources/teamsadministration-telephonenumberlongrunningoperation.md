---
title: "telephoneNumberLongRunningOperation resource type"
description: "Represents telephone number asynchronous operation"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# telephoneNumberLongRunningOperation resource type

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the operations available for getting telephone number asynchronous operation details.


Inherits from [microsoft.graph.entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/teamsadministration-telephonenumberlongrunningoperation-get.md)|[microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md)|Read the properties and relationships of [microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|String|Date and time when the asynchronous operation was created.|
|id|String|Operation identifier found as a response to asynchronous action. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md).|
|numbers|[microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperationDetails](../resources/teamsadministration-telephonenumberlongrunningoperationdetails.md) collection|Asynchronous operation details.|
|status|longRunningOperationStatus|Status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `skipped, and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation",
  "id": "String (identifier)",
  "createdDateTime": "String",
  "status": "String",
  "numbers": [
    {
      "@odata.type": "microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperationDetails"
    }
  ]
}
```
