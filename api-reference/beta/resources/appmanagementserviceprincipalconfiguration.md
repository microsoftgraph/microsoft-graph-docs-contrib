---
title: "appManagementServicePrincipalConfiguration resource type"
description: "Configuration object to configure app management policy restrictions like that are specific to service principals."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# appManagementServicePrincipalConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure app management policy restrictions like password credentials and certificate key credentials that are specific to service principals.


Inherits from [appManagementConfiguration](appmanagementconfiguration.md).

## Properties
| Property                                    | Type                                                                              | Description                                                                   |
| :------------------------------------------ | :-------------------------------------------------------------------------------- | :---------------------------------------------------------------------------- |
| keyCredentials                              | [keyCredentialConfiguration](keyCredentialConfiguration.md) collection            | Collection of certificate credential restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md).|
| passwordCredentials                         | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection  | Collection of password restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementServicePrincipalConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appManagementServicePrincipalConfiguration",
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
    }
  ],
  "keyCredentials": [
    {
      "@odata.type": "microsoft.graph.keyCredentialConfiguration"
    }
  ]
}
```

