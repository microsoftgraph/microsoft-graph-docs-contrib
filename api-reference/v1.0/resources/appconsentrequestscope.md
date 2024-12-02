---
title: "appConsentRequestScope resource type"
description: "Details of the dynamic permission scopes for which access is requested."
author: "eringreenlee"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# appConsentRequestScope resource type

Namespace: microsoft.graph

The **appConsentRequestScope** details the dynamic permission scopes for which access is being requested.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the scope.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appConsentRequestScope"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.appConsentRequestScope",
  "displayName": "String"
}
```

