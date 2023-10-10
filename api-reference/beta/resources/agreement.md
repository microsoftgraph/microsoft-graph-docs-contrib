---
title: "agreement resource type"
description: "Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "governance"
author: "AlexFilipin"
---

# agreement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant's customizable terms of use agreement that is created and managed with Azure Active Directory (Azure AD). You can use the following methods to create and manage the [Azure Active Directory Terms of Use feature](#see-also) according to your scenario.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create](../api/termsofusecontainer-post-agreements.md) | [agreement](agreement.md) | Create a new agreement by posting to the agreement collection. |
| [List](../api/termsofusecontainer-list-agreements.md) | [agreement](agreement.md) collection | Get an agreement object collection. |
| [Get](../api/agreement-get.md) | [agreement](agreement.md) | Read properties and relationships of an agreement object. |
| [Update](../api/agreement-update.md) | None | Update an agreement object. |
| [Delete](../api/agreement-delete.md) | None | Delete an agreement object. |
|[List acceptances](../api/agreement-list-acceptances.md)|[agreementAcceptance](../resources/agreementacceptance.md) collection|Get the details about the acceptance records for a specific agreement.|
|[List agreementAcceptances](../api/user-list-agreementacceptances.md)|[agreementAcceptance](../resources/agreementacceptance.md) collection|Get the agreement acceptances for the signed-in user.|
|[Get agreementFile](../api/agreementfile-get.md)|[agreementFile](../resources/agreementfile.md) collection|Retrieve the details of the default file for an agreement, including the language and version information.|
|[List files](../api/agreement-list-files.md)|[agreementFileLocalization](../resources/agreementfilelocalization.md) collection|Retrieve all localized files related to an agreement.|
|[Create agreementFileLocalization](../api/agreement-post-files.md)|[agreementFileLocalization](../resources/agreementfilelocalization.md)|Create a new localized agreement file.|


## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Display name of the agreement. The display name is used for internal tracking of the agreement but is not shown to end users who view the agreement. Supports `$filter` (`eq`).|
|id|String| Read-only. Supports `$filter` (`eq`).|
|isPerDeviceAcceptanceRequired|Boolean|This setting enables you to require end users to accept this agreement on every device that they are accessing it from. The end user will be required to register their device in Azure AD, if they haven't already done so. Supports `$filter` (`eq`).|
|isViewingBeforeAcceptanceRequired|Boolean|Indicates whether the user has to expand the agreement before accepting. Supports `$filter` (`eq`).|
|termsExpiration|[termsExpiration](termsexpiration.md)| Expiration schedule and frequency of agreement for all users.  Supports `$filter` (`eq`).|
|userReacceptRequiredFrequency|Duration|The duration after which the user must re-accept the terms of use. The value is represented in ISO 8601 format for durations.|


## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|acceptances|[agreementAcceptance](agreementacceptance.md) collection|Read-only. Information about acceptances of this agreement.|
|file|[agreementFile](agreementfile.md) | Default PDF linked to this agreement.|
|files|[agreementFileLocalization](agreementfilelocalization.md) collection| PDFs linked to this agreement. **Note:** This property is in the process of being deprecated. Use the  **file** property instead.|


## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agreement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agreement",
  "id": "String (identifier)",
  "displayName": "String",
  "termsExpiration": {
    "@odata.type": "microsoft.graph.termsExpiration"
  },
  "userReacceptRequiredFrequency": "String (duration)",
  "isViewingBeforeAcceptanceRequired": "Boolean",
  "isPerDeviceAcceptanceRequired": "Boolean"
}
```

## See also

+ [Azure Active Directory Terms of Use](/azure/active-directory/conditional-access/terms-of-use) 