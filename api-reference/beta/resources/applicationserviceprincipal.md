---
title: "applicationServicePrincipal resource type"
description: "A combination of an application and a servicePrincipal."
ms.localizationpriority: medium
author: "Jackson-Woods"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# applicationServicePrincipal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When an instance of an application from the Microsoft Entra application gallery is added, [application](../resources/application.md) and [servicePrincipal](../resources/serviceprincipal.md) objects are created in the directory. The **applicationServicePrincipal** represents the concatenation of the **application** and **servicePrincipal** object.

## Methods

None

## Properties

| Property | Type        | Description |
|:-------------|:------------|:------------|
|application|[application](../resources/application.md)|Represents an application registered in Microsoft Entra ID.|
|servicePrincipal|[servicePrincipal](../resources/serviceprincipal.md)|Represents an instance of an application in a directory.|

## Relationships

None

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationServicePrincipal",
  "keyProperty": "id"
}-->

```json
{
   "servicePrincipal": {"@odata.type":"microsoft.graph.servicePrincipal"},
   "application": {"@odata.type":"microsoft.graph.application"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationServicePrincipal resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
