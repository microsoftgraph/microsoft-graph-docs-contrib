---
title: "appManagementApplicationConfiguration resource type"
description: "App management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: ""
doc_type: resourcePageType
---

# appManagementApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

App management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals.

Inherits from [appManagementConfiguration](../resources/appmanagementconfiguration.md).

## Properties

| Property            | Type                                                                                          | Description                                                                                                                                                                                      |
| :------------------ | :-------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| audiences           | [audiencesConfiguration](../resources/audiencesconfiguration.md)                              | Property to restrict creation or update of apps based on their target signInAudience types.                                                                                                      |
| identifierUris      | [identifierUriConfiguration](../resources/identifieruriconfiguration.md)                      | Property to restrict custom URIs for applications. All but the 'default' URI of the format (api://{appId}) are blocked.                                                                          |
| keyCredentials      | [keyCredentialConfiguration](../resources/keycredentialconfiguration.md) collection           | Collection of keyCredential restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md). |
| passwordCredentials | [passwordCredentialConfiguration](../resources/passwordcredentialconfiguration.md) collection | Collection of password restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md).      |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appManagementApplicationConfiguration"
}
-->

```json
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
  "federatedIdentityCredentials": {
    "@odata.type": "microsoft.graph.federatedIdentityCredentialConfiguration"
  },
  "identifierUris": {
    "@odata.type": "microsoft.graph.identifierUriConfiguration"
  },
  "audiences": {
    "@odata.type": "microsoft.graph.audiencesConfiguration"
  }
}
```
