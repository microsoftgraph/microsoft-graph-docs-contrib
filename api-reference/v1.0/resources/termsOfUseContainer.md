---
title: "termsOfUseContainer resource type"
description: "Container for the relationships that expose the terms of use API and its features. Currently exposes the agreements and agreementAcceptances relationships."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "AlexFilipin"
ms.date: 07/22/2024
---

# termsOfUseContainer resource type

Namespace: microsoft.graph

Container for the relationships that expose the terms of use API and its features. Currently exposes the [agreements](agreement.md) and [agreementAcceptances](agreementacceptance.md) relationships.

Inherits from [entity](entity.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|agreementAcceptances|[agreementAcceptance](agreementacceptance.md) collection| Represents the current status of a user's response to a company's customizable terms of use agreement.|
|agreements|[agreement](agreement.md) collection|Represents a tenant's customizable terms of use agreement that's created and managed with Microsoft Entra ID Governance.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.termsOfUseContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.termsOfUseContainer"
}
```
