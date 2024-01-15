---
title: "appConsentApprovalRoute resource type"
description: "Container for base resources that expose the app consent request API and features. Currently exposes only the appConsentRequests relationship."
author: "eringreenlee"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# appConsentApprovalRoute resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for base resources that expose the app consent request API and features. Currently exposes only the [appConsentRequests](appconsentrequest.md) relationship.

Inherits from [entity](entity.md).

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|appConsentRequests|[appConsentRequest](../resources/appconsentrequest.md) collection| A collection of [appConsentRequest](../resources/appconsentrequest.md) objects representing apps for which admin consent has been requested by one or more users.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appConsentApprovalRoute",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appConsentApprovalRoute"
}
```

