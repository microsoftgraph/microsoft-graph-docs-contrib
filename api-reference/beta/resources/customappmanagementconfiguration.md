---
title: "customAppManagementConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# customAppManagementConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings to block specific signInAudience types.

Inherits from [appManagementConfiguration](../resources/appmanagementconfiguration.md).

## Properties

| Property                     | Type                                                                                                                 | Description                                                                                                                                                                                      |
| :--------------------------- | :------------------------------------------------------------------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| applicationRestrictions      | [customAppManagementApplicationConfiguration](../resources/customappmanagementapplicationconfiguration.md)           | Configuration for restrictions that apply to application objects.                                                                                                                                |
| keyCredentials               | [keyCredentialConfiguration](../resources/keycredentialconfiguration.md) collection                                  | Collection of keyCredential restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md). |
| passwordCredentials          | [passwordCredentialConfiguration](../resources/passwordcredentialconfiguration.md) collection                        | Collection of password restrictions settings to be applied to an application or service principal. Inherited from [appManagementConfiguration](../resources/appmanagementconfiguration.md).      |
| servicePrincipalRestrictions | [customAppManagementServicePrincipalConfiguration](../resources/customappmanagementserviceprincipalconfiguration.md) | Configuration for restrictions that apply to service principal objects.                                                                                                                          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customAppManagementConfiguration"
}
-->

```json
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
  "federatedIdentityCredentials": {
    "@odata.type": "microsoft.graph.federatedIdentityCredentialConfiguration"
  },
  "applicationRestrictions": {
    "@odata.type": "microsoft.graph.customAppManagementApplicationConfiguration"
  },
  "servicePrincipalRestrictions": {
    "@odata.type": "microsoft.graph.customAppManagementServicePrincipalConfiguration"
  }
}
```
