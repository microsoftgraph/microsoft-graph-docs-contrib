---
title: "awsSource resource type"
description: "Represents the source of the AWS identity."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source of the AWS identity.


Inherits from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountId|String|AWS account ID.|
|identityProviderType|String|IdP source type. Inherited from [authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md).|

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

