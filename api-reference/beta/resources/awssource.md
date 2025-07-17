---
title: "awsSource resource type"
description: "Represents an authorization system identity sourced from AWS."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# awsSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Represents an authorization system identity sourced from AWS.

Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountId|String|AWS account ID.|
|identityProviderType|String|The identity provider source type. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.awsSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsSource",
  "identityProviderType": "String",
  "accountId": "String"
}
```


