---
title: "reportRoot resource type"
description: "Represents a container for Azure Active Directory (Azure AD) reporting resources."
author: "kvenkit"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

Represents a container for Azure Active Directory (Azure AD) reporting resources.

## Methods

| Method                                                                                                | Return type                                                                                       | Description                                                                                                                                       |
| :---------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------------------------ |
| [List userRegistrationDetails](../api/authenticationmethodsroot-list-userregistrationdetails.md)               | [userRegistrationDetails](../resources/userregistrationdetails.md) collection               | Get the state of authentication methods of all users in the tenant. |
| [Get userRegistrationDetails](../api/userregistrationdetails-get.md) | [userRegistrationDetails](../resources/userregistrationdetails.md) collection               | Get the state of authentication methods of a user in the tenant. |


## Properties
None.

## Relationships
| Relationship                      | Type                                                                                              | Description                                                                                                         |
| :-------------------------------- | :------------------------------------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------ |
| userRegistrationDetails        | [userRegistrationDetails](../resources/userRegistrationDetails.md) collection               | Represents the authentication methods of users for a given tenant.                                         |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```
