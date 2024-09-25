---
title: "appManagementApplicationConfiguration resource type"
description: "App management application configuration object to configure app management policy restrictions like identifier URIs, password credentials, and certificate credentials that are specific to applications."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# appManagementApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object to configure app management policy restrictions like identifier URIs, password credentials, and certificate credentials that are specific to applications.


Inherits from [appManagementConfiguration](appmanagementconfiguration.md).

## Properties
| Property                                    | Type                                                                              | Description                                                                   |
| :------------------------------------------ | :-------------------------------------------------------------------------------- | :---------------------------------------------------------------------------- |
| identifierUris                              | [identifierUriConfiguration](identifieruriconfiguration.md)          | Configuration object for restrictions on **identifierUris** property for an application |
| keyCredentials                              | [keyCredentialConfiguration](keyCredentialConfiguration.md) collection            | Collection of certificate credential restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md). |
| passwordCredentials                         | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection  | Collection of password restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md). |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementApplicationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appManagementApplicationConfiguration",
  "passwordCredentials": [
    {
      "@odata.type": "microsoft.graph.passwordCredentialConfiguration"
    }
  ],
  "keyCredentials": [
    {
      "@odata.type": "microsoft.graph.keyCredentialConfiguration"
    }
  ],
  "identifierUris": {
    "@odata.type": "microsoft.graph.identifierUriConfiguration"
  }
}
```

