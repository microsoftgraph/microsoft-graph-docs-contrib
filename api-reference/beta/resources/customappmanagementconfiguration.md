---
title: "customAppManagementConfiguration resource type"
description: "Custom app management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals."
author: "yogesh-randhawa"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# customAppManagementConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Custom app management configuration object that contains properties which can be configured to enable various restrictions for applications and service principals. Some of these rewstrictions apply to both applications and service principals. Others, like identifierUris restriction apply only to applications and are configured under the property `applicationRestrictions` as a [customAppManagementApplicationConfiguration](customAppManagementApplicationConfiguration.md) object.


Inherits from [appManagementConfiguration](appmanagementconfiguration.md).

## Properties

| Property                | Type                              | Description                                     |
| :---------------------- | :-------------------------------- | :---------------------------------------------- |
| applicationRestrictions | [customAppManagementApplicationConfiguration](customappmanagementapplicationconfiguration.md) | Restrictions that apply only to application objects that the policy apllies to.               |
| keyCredentials          | [keyCredentialConfiguration](keyCredentialConfiguration.md) collection | Collection of keyCredential restrictions settings to be applied to an application or service principal. |
| passwordCredentials     | [passwordCredentialConfiguration](passwordCredentialConfiguration.md) collection | Collection of password restrictions settings to be applied to an application or service principal. |


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

