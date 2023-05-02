---
title: "onUserCreateStartExternalUsersSelfServiceSignUp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onUserCreateStartExternalUsersSelfServiceSignUp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [onUserCreateStartHandler](../resources/onusercreatestarthandler.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackages|[authenticationAccessPackageConfiguration](../resources/authenticationaccesspackageconfiguration.md) collection|**TODO: Add Description**|
|userTypeToCreate|userType|**TODO: Add Description**.The possible values are: `member`, `guest`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onUserCreateStartExternalUsersSelfServiceSignUp",
  "accessPackages": [
    {
      "@odata.type": "microsoft.graph.authenticationAccessPackageConfiguration"
    }
  ],
  "userTypeToCreate": "String"
}
```

