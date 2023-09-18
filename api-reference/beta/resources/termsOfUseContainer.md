---
title: "termsOfUseContainer resource type"
description: "Container for the relationships that expose the terms of use API and its features. Currently exposes the agreements and agreementAcceptances relationships."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "governance"
author: "AlexFilipin"
---

# termsOfUseContainer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|agreements|[agreement](agreement.md) collection|Represents a tenant's customizable terms of use agreement that's created and managed with Azure Active Directory (Azure AD).|

## JSON representation

The following is a JSON representation of the resource.
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

