---
title: "userRegistrationFeatureCount resource type"
description: "Represents the number of users registered or capable for multifactor authentication, self-service password reset, and passwordless authentication."
author: "kvenkit"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# userRegistrationFeatureCount resource type

Namespace: microsoft.graph

Represents the number of users registered or capable for multifactor authentication, self-service password reset, and passwordless authentication.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|feature|authenticationMethodFeature|Number of users registered or capable for multifactor authentication, self-service password reset, and passwordless authentication. Possible values are: `ssprRegistered`, `ssprEnabled`, `ssprCapable`, `passwordlessCapable`, `mfaCapable`, `unknownFutureValue`.|
|userCount|Int64|Number of users.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationFeatureCount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureCount",
  "feature": "String",
  "userCount": "Int64"
}
```
