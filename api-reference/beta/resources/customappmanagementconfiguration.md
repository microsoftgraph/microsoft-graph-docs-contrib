---
title: "customAppManagementConfiguration resource type"
description: "Configuration object that contains properties that can be configured to enable various restrictions for applications and service principals as part of an appManagementPolicy object."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customAppManagementConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration object that can be configured to enable various restrictions for applications and service principals as part of the [appManagementPolicy](../resources/appmanagementpolicy.md) object. Some of these restrictions apply to both applications and service principals while others are applicable only to applications.

Inherits from [appManagementConfiguration](appmanagementconfiguration.md).

## Properties

| Property                | Type                              | Description                                     |
| :---------------------- | :-------------------------------- | :---------------------------------------------- |
| applicationRestrictions | [customAppManagementApplicationConfiguration](customappmanagementapplicationconfiguration.md) | Restrictions applicable only to application objects that the policy applies to.               |
| keyCredentials          | [keyCredentialConfiguration](keyCredentialConfiguration.md) collection | Collection of keyCredential restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](appmanagementconfiguration.md). |
| passwordCredentials     | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection | Collection of password restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](appmanagementconfiguration.md). |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppManagementConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customAppManagementConfiguration",
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
  "applicationRestrictions": {
    "@odata.type": "microsoft.graph.customAppManagementApplicationConfiguration"
  }
}
```

