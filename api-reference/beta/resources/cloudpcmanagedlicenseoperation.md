---
title: "cloudPcManagedLicenseOperation resource type"
description: "An abstract type that represents an asynchronous operation on the Cloud PC managed-license collection."
author: "huijunjin"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcManagedLicenseOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an asynchronous operation on the [cloudPcManagedLicense](../resources/cloudpcmanagedlicense.md) collection. This complex type is used by the **operation** parameter of the [submitManagedLicenseOperation](../api/cloudpcmanagedlicense-submitmanagedlicenseoperation.md) action and returned by that action and the [retrieveManagedLicenseOperation](../api/cloudpcmanagedlicense-retrievemanagedlicenseoperation.md) function.

Base type of [cloudPcManagedLicenseExtendAccess](../resources/cloudpcmanagedlicenseextendaccess.md). Use the **@odata.type** property to identify the concrete operation type in requests and responses.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the service accepts the operation. The value uses ISO 8601 format and is always in UTC. For example, `2026-10-09T09:00:00Z`. Read-only. Not nullable.|
|operationRequestId|String|The unique, service-generated identifier for the operation. The service generates this value when it accepts the operation. The value is a GUID with a maximum length of 36 characters and remains stable for the lifetime of the accepted operation. This value isn't an entity key. Use it with [retrieveManagedLicenseOperation](../api/cloudpcmanagedlicense-retrievemanagedlicenseoperation.md) to retrieve the operation status and results. Read-only. Not nullable.|
|servicePlanId|String|The unique identifier of the service plan that selects the target license SKU. The maximum length is 36 characters. Required in the operation submitted to [submitManagedLicenseOperation](../api/cloudpcmanagedlicense-submitmanagedlicenseoperation.md). Not nullable.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcManagedLicenseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcManagedLicenseOperation",
  "createdDateTime": "String (timestamp)",
  "operationRequestId": "String",
  "servicePlanId": "String"
}
```
